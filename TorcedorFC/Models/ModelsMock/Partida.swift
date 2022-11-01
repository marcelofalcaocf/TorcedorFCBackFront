//
//  Partida.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Partida : PartidaBase {
    var placarMandante: Int
    var placarVisitante: Int
    
    init(placarMandante: Int, placarVisitante: Int, partidaId: Int, campeonato: Campeonato, timeMandante: Time, timeVisitante: Time, dataRealizacao: String, horaRealizacao: String) {
        self.placarMandante = placarMandante
        self.placarVisitante = placarVisitante
        super.init(
            partidaId: partidaId,
            campeonato: campeonato,
            timeMandante: timeMandante,
            timeVisitante: timeVisitante,
            dataRealizacao: dataRealizacao,
            horaRealizacao: horaRealizacao
        )
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
    
    enum CodingKeys: String, CodingKey {
        case placarMandante = "placar_mandante"
        case placarVisitante = "placar_visitante"
    }
}
