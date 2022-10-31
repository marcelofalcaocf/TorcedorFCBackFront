//
//  Cartoes.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Cartoes : Codable {
    var amarelo: CartaoCor
    var vermelho: CartaoCor
    
    init(amarelo: CartaoCor, vermelho: CartaoCor) {
        self.amarelo = amarelo
        self.vermelho = vermelho
    }
    
    enum CodingKeys: String, CodingKey {
        case amarelo, vermelho
    }
}
