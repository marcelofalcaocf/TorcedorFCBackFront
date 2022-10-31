//
//  Posicao.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Posicao : Codable {
    var sigla: String
    
    init(sigla: String) {
        self.sigla = sigla
    }
    
    enum CodingKeys: String, CodingKey {
        case sigla 
    }
}
