//
//  BrazilCupFaseMock.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 29/10/22.
//

import Foundation

class BrazilCupFaseMock {
    var fase : Fase = Fase(
        chaves: [
            Chave(
                partidaIda: Partida(
                    placarMandante: 3,
                    placarVisitante: 2,
                    partidaId: 1,
                    campeonato: Campeonato(
                        campeonatoId: 2,
                        logo: nil,
                        nomePopular: nil,
                        edicaoAtual: nil,
                        nome: "Copa do Brasil"
                    ),
                    timeMandante: Time(
                        timeId: 1,
                        nomePopular: "Palmeiras",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/7spurne-xDt2p6C0imYYNA_48x48.png"
                    ),
                    timeVisitante: Time(
                        timeId: 8,
                        nomePopular: "América-MG",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/ZFsHqGsKNQPlCQjZ4Lu-EQ_48x48.png"
                    ),
                    dataRealizacao: "07/10/2022",
                    horaRealizacao: "19:00"
                ),
                partidaVolta: Partida(
                    placarMandante: 0,
                    placarVisitante: 2,
                    partidaId: 2,
                    campeonato: Campeonato(
                        campeonatoId: 2,
                        logo: nil,
                        nomePopular: nil,
                        edicaoAtual: nil,
                        nome: "Copa do Brasil"
                    ),
                    timeMandante:Time(
                        timeId: 2,
                        nomePopular: "Internacional",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/OWVFKuHrQuf4q2Wk0hEmSA_48x48.png"
                    ),
                    timeVisitante: Time(
                        timeId: 1,
                        nomePopular: "Palmeiras",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/7spurne-xDt2p6C0imYYNA_48x48.png"
                    ),
                    dataRealizacao: "29/10/2022",
                    horaRealizacao: "19:00"
                )
            ),
            Chave(
                partidaIda: Partida(
                    placarMandante: 3,
                    placarVisitante: 0,
                    partidaId: 3,
                    campeonato: Campeonato(
                        campeonatoId: 2,
                        logo: nil,
                        nomePopular: nil,
                        edicaoAtual: nil,
                        nome: "Copa do Brasil"
                    ),
                    timeMandante: Time(
                        timeId: 4,
                        nomePopular: "Corinthians",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/tCMSqgXVHROpdCpQhzTo1g_48x48.png"
                    ),
                    timeVisitante: Time(
                        timeId: 3,
                        nomePopular: "Flamengo",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/orE554NToSkH6nuwofe7Yg_48x48.png"
                    ),
                    dataRealizacao: "07/10/2022",
                    horaRealizacao: "19:00"
                ),
                partidaVolta: Partida(
                    placarMandante: 3,
                    placarVisitante: 1,
                    partidaId: 4,
                    campeonato: Campeonato(
                        campeonatoId: 2,
                        logo: nil,
                        nomePopular: nil,
                        edicaoAtual: nil,
                        nome: "Copa do Brasil"
                    ),
                    timeMandante: Time(
                        timeId: 3,
                        nomePopular: "Flamengo",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/orE554NToSkH6nuwofe7Yg_48x48.png"
                    ),
                    timeVisitante: Time(
                        timeId: 4,
                        nomePopular: "Corinthians",
                        escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/tCMSqgXVHROpdCpQhzTo1g_48x48.png"
                    ),
                    dataRealizacao: "29/10/2022",
                    horaRealizacao: "19:00"
                )
            )
        ],
        faseId: 1,
        nome: "Primeira Fase"
    )
}
