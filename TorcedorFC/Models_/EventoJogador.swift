//
//  EventoJogador.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class EventoJogador : Codable {
    var atleta: Atleta
    var minuto: String
    
    init(atleta: Atleta, minuto: String) {
        self.atleta = atleta
        self.minuto = minuto
    }
    
    enum CodingKeys: String, CodingKey {
        case atleta, minuto
    }
}
