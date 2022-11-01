//
//  PartidaBase.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class PartidaBase : Codable {
    var partidaId: Int
    // conferir se essa propriedade realmente precisa ficar aqui.
    var campeonato: Campeonato
    var timeMandante: Time
    var timeVisitante: Time
    var dataRealizacao: String
    var horaRealizacao: String
    
    init(partidaId: Int, campeonato: Campeonato, timeMandante: Time, timeVisitante: Time, dataRealizacao: String, horaRealizacao: String) {
        self.partidaId = partidaId
        self.campeonato = campeonato
        self.timeMandante = timeMandante
        self.timeVisitante = timeVisitante
        self.dataRealizacao = dataRealizacao
        self.horaRealizacao = horaRealizacao
    }
    
    enum CodingKeys: String, CodingKey {
        case partidaId = "partida_id"
        case timeMandante = "time_mandante"
        case timeVisitante = "time_visitante"
        case dataRealizacao = "data_realizacao"
        case horaRealizacao = "hora_realizacao"
        case campeonato
    }
}
