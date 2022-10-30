//
//  PartidaBase.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class PartidaBase : Codable {
    var partidaId: Int
    var campeonato: Campeonato
    var timeMandante: Time
    var timeVisitante: Time
    
    init(partidaId: Int, campeonato: Campeonato, timeMandante: Time, timeVisitante: Time) {
        self.partidaId = partidaId
        self.campeonato = campeonato
        self.timeMandante = timeMandante
        self.timeVisitante = timeVisitante
    }
    
    enum CodingKeys: String, CodingKey {
        case partidaId = "partida_id"
        case timeMandante = "time_mandante"
        case timeVisitante = "time_visitante"
        case campeonato
    }
}
