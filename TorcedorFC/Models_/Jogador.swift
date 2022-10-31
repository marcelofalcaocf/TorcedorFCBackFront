//
//  Jogador.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Jogador : Codable {
    var atleta: Atleta
    var camisa: String
    var ordem: Int
    var posicao: Posicao
    
    init(atleta: Atleta, camisa: String, ordem: Int, posicao: Posicao) {
        self.atleta = atleta
        self.camisa = camisa
        self.ordem = ordem
        self.posicao = posicao
    }
    
    enum CodingKeys: String, CodingKey {
        case atleta, camisa, ordem, posicao
    }
}
