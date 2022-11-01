//
//  Tecnico.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Tecnico : Codable {
    var tecnicoId: Int
    var nomePopular: String
    
    init(tecnicoId: Int, nomePopular: String) {
        self.tecnicoId = tecnicoId
        self.nomePopular = nomePopular
    }
    
    enum CodingKeys: String, CodingKey {
        case tecnicoId = "tecnico_id"
        case nomePopular = "nome_popular"
    }
}
