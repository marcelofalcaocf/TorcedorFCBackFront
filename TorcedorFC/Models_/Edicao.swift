//
//  Edicao.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Edicao: Codable {
    var edicaoId: Int
    var temporada: String
    
    init(edicaoId: Int, temporada: String) {
        self.edicaoId = edicaoId
        self.temporada = temporada
    }
    
    enum CodingKeys: String, CodingKey {
        case edicaoId = "edicao_id"
        case temporada
    }
}
