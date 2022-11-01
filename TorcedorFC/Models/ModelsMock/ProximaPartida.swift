//
//  ProximaPartida.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class ProximaPartida : Codable {
    var nomeDoCampeonato: [PartidaBase]
    
    init(nomeDoCampeonato: [PartidaBase]) {
        self.nomeDoCampeonato = nomeDoCampeonato
    }
    
    enum CodingKeys: String, CodingKey {
        case nomeDoCampeonato = "nome_do_campeonato"
    }
}
