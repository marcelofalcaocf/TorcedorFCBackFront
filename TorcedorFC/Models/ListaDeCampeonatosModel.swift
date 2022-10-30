//
//  ListaDeCampeonatosModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.

import Foundation


// MARK: - EdicaoAtual
struct EdicaoAtual: Codable {
    let edicaoID: Int
    let temporada, nome, nomePopular, slug: String

    enum CodingKeys: String, CodingKey {
        case edicaoID = "edicao_id"
        case temporada, nome
        case nomePopular = "nome_popular"
        case slug
    }
}

// MARK: - FaseAtual
struct FaseAtual: Codable {
    let faseID: Int
    let nome, slug: String
    let tipo: FaseAtualTipo
    let link: String

    enum CodingKeys: String, CodingKey {
        case faseID = "fase_id"
        case nome, slug, tipo
        case link = "_link"
    }
}

enum FaseAtualTipo: String, Codable {
    case grupos = "grupos"
    case mataMata = "mata-mata"
    case pontosCorridos = "pontos-corridos"
}

// MARK: - RodadaAtual
struct RodadaAtual: Codable {
    let nome, slug: String
    let rodada: Int
    let status: String
}

enum Status: String, Codable {
    case agendado = "agendado"
    case andamento = "andamento"
    case finalizado = "finalizado"
}

enum ListaDeJogoTipo: String, Codable {
    case mataMata = "Mata-Mata"
    case misto = "Misto"
    case pontosCorridos = "Pontos Corridos"
}

