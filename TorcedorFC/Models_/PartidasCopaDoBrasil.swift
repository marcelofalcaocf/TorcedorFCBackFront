//
//  PartidasCopaDoBrasil.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

// Não tem modelo da response do campeonato brasileiro

class PartidasCopaDoBrasil : Codable {
    var partidas: PartidasAux
    
    init(partidas: PartidasAux) {
        self.partidas = partidas
    }
    
    enum CodingKeys: String, CodingKey {
        case partidas
    }
}

class PartidasAux : Codable {
    var partidas: FaseBase
    
    init(partidas: FaseBase) {
        self.partidas = partidas
    }
    
    enum CodingKeys: String, CodingKey {
        case partidas
    }
}
