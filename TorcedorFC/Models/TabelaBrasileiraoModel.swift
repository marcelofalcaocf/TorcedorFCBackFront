//
//  TabelaBrasileiraoModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import Foundation

// MARK: - TabelaBrasileiraoElement
struct TabelaBrasileiraoElement: Codable {
    let posicao, pontos: Int
    let time: Time
    let jogos, vitorias, empates, derrotas: Int
    let golsPro, golsContra, saldoGols, aproveitamento: Int
    let variacaoPosicao: Int
    let ultimosJogos: [UltimosJogo]

    enum CodingKeys: String, CodingKey {
        case posicao, pontos, time, jogos, vitorias, empates, derrotas
        case golsPro = "gols_pro"
        case golsContra = "gols_contra"
        case saldoGols = "saldo_gols"
        case aproveitamento
        case variacaoPosicao = "variacao_posicao"
        case ultimosJogos = "ultimos_jogos"
    }
}

// MARK: - Time
struct Time: Codable {
    let timeID: Int
    let nomePopular, sigla: String
    let escudo: String

    enum CodingKeys: String, CodingKey {
        case timeID = "time_id"
        case nomePopular = "nome_popular"
        case sigla, escudo
    }
}

enum UltimosJogo: String, Codable {
    case d = "d"
    case e = "e"
    case v = "v"
}

typealias TabelaBrasileirao = [TabelaBrasileiraoElement]

