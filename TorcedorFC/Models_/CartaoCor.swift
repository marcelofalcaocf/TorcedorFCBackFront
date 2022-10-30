//
//  CartaoCor.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class CartaoCor : Codable {
    var mandante: [EventoJogador]
    var visitante: [EventoJogador]
    
    init(mandante: [EventoJogador], visitante: [EventoJogador]) {
        self.mandante = mandante
        self.visitante = visitante
    }
    
    enum CodingKeys: String, CodingKey {
        case mandante, visitante
    }
}
