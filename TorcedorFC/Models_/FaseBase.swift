//
//  FaseBase.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class FaseBase : Codable {
    var faseId: Int
    var nome: String
    
    init(faseId: Int, nome: String) {
        self.faseId = faseId
        self.nome = nome
    }
    
    enum CodingKeys: String, CodingKey {
        case faseId = "fase_id"
        case nome
    }
}
