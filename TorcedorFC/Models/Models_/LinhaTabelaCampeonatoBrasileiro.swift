//
//  LinhaTabelaCampeonatoBrasileiro.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class LinhaTabelaCampeonatoBrasileiro : Codable {
    var posicao: Int
    var pontos: Int
    var time: Time
    var jogos: Int
    var vitorias: Int
    var empates: Int
    var derrotas: Int
    
    init(posicao: Int, pontos: Int, time: Time, jogos: Int, vitorias: Int, empates: Int, derrotas: Int) {
        self.posicao = posicao
        self.pontos = pontos
        self.time = time
        self.jogos = jogos
        self.vitorias = vitorias
        self.empates = empates
        self.derrotas = derrotas
    }
    
    enum CodingKeys: String, CodingKey {
        case posicao, pontos, time, jogos, vitorias, empates, derrotas
    }
}
