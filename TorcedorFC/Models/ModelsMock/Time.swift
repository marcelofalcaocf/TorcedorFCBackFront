//
//  Time.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Time : Codable {
    var timeId: Int
    var nomePopular: String
    var escudo: String
    
    init(timeId: Int, nomePopular: String, escudo: String) {
        self.timeId = timeId
        self.nomePopular = nomePopular
        self.escudo = escudo
    }
    
    enum CodingKeys: String, CodingKey {
        case timeId = "time_id"
        case nomePopular = "nome_popular"
        case escudo
    }
}
