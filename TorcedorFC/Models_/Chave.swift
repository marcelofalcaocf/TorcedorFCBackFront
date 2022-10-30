//
//  Chave.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Chave : Codable {
    var partidaId: Int
    var partidaIda: Partida
    var partidaVolta: Partida
    
    init(partidaId: Int, partidaIda: Partida, partidaVolta: Partida) {
        self.partidaId = partidaId
        self.partidaIda = partidaIda
        self.partidaVolta = partidaVolta
    }
    
    enum CodingKeys: String, CodingKey {
        case partidaId = "partida_id"
        case partidaVolta = "partida_volta"
        case partidaIda = "partida_ida"
    }
}
