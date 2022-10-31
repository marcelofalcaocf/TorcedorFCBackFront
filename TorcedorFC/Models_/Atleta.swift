//
//  Atleta.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Atleta: Codable {
    var atletaId: Int
    var nome: String
    
    init(atletaId: Int, nome: String) {
        self.atletaId = atletaId
        self.nome = nome
    }
    
    enum CodingKeys: String, CodingKey {
        case atletaId = "atleta_id"
        case nome
    }
}
