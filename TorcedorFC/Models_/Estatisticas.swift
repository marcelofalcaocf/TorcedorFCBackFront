//
//  Estatisticas.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Estatisticas : Codable{
    var mandante: Estatistica
    var visitante: Estatistica
    
    init(mandante: Estatistica, visitante: Estatistica) {
        self.mandante = mandante
        self.visitante = visitante
    }
    
    enum CodingKeys: String, CodingKey {
        case mandante, visitante
    }
}

