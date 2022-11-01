//
//  Fase.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Fase : FaseBase {
    var chaves: [Chave]
    
    init(chaves: [Chave], faseId: Int, nome: String) {
        self.chaves = chaves
        super.init(faseId: faseId, nome: nome)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
