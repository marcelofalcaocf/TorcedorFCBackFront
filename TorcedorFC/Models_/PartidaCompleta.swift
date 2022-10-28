//
//  PartidaCompleta.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

// Esta faltando mapear a propriedade gols pois nao tem modelo nela na api
struct PartidaCompleta : Partida {
    var status: String
    var estatisticas: Estatisticas
    var cartoes: Cartoes
    var escalacoes: Escalacoes
}
