//
//  Campeonato.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Campeonato: Codable {
    var campeonatoId: Int
    var logo: String?
    var nomePopular: String?
    var nome: String
    var edicaoAtual: Edicao?
    
    init(campeonatoId: Int, logo: String?, nomePopular: String?, edicaoAtual: Edicao?, nome: String) {
        self.campeonatoId = campeonatoId
        self.logo = logo
        self.nomePopular = nomePopular
        self.edicaoAtual = edicaoAtual
        self.nome = nome
    }
    
    enum CodingKeys: String, CodingKey {
        case campeonatoId = "campeonato_id"
        case logo, nome
        case nomePopular = "nome_popular"
        case edicaoAtual = "edicao_atual"
    }
}
