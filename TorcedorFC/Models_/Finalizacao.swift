//
//  Finalizacao.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Finalizacao : Codable {
    var total: Int
    var noGol: Int
    
    init(total: Int, noGol: Int) {
        self.total = total
        self.noGol = noGol
    }
    
    enum CodingKeys: String, CodingKey {
        case total
        case noGol = "no_gol"
    }
}
