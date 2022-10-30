//
//  Chave.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Chave : Codable {
    var partidaIda: Partida
    var partidaVolta: Partida
    
    init(partidaIda: Partida, partidaVolta: Partida) {
        self.partidaIda = partidaIda
        self.partidaVolta = partidaVolta
    }
    
    enum CodingKeys: String, CodingKey {
        case partidaVolta = "partida_volta"
        case partidaIda = "partida_ida"
    }
}
