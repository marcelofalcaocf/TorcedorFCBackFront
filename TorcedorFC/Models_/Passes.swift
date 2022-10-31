//
//  Passes.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Passes : Codable{
    var total: Int
    var precisao: String
    
    init(total: Int, precisao: String) {
        self.total = total
        self.precisao = precisao
    }
    
    enum CodingKeys: String, CodingKey {
        case total, precisao
    }
}
