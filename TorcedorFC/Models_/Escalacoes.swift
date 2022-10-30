//
//  Escalacoes.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Escalacoes : Codable {
    var mandante: DetalhesTimePartida
    var visitante: DetalhesTimePartida
    
    init(mandante: DetalhesTimePartida, visitante: DetalhesTimePartida) {
        self.mandante = mandante
        self.visitante = visitante
    }
    
    enum CodingKeys: String, CodingKey {
        case mandante, visitante
    }
}
