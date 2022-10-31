//
//  HomeMock.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 29/10/22.
//

import Foundation

class HomeMock {
    var campeonatos: [Campeonato] = [
        Campeonato(
            campeonatoId: 1,
            logo: "https://api.api-futebol.com.br/images/competicao/brasileiro-seriea.png",
            nomePopular: "Brasileirão",
            edicaoAtual: Edicao(
                edicaoId: 1,
                temporada: "2022"
            ),
            nome: "Campeonato Brasileiro"
        ),
        Campeonato(
            campeonatoId: 2,
            logo: "https://api.api-futebol.com.br/images/competicao/copa-do-brasil.png",
            nomePopular: "Copa do Brasil",
            edicaoAtual: Edicao(
                edicaoId: 2,
                temporada: "2022"
            ),
            nome: "Copa do Brasil"
        )
    ]
}
