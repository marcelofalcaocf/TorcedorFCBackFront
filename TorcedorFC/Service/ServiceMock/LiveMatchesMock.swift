//
//  LiveMatchesMock.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 01/11/22.
//

import Foundation

class LiveMatchesMock{
    var partidas:[Partida] = [
        Partida(
            placarMandante: 2,
            placarVisitante: 1,
            partidaId: 1,
            campeonato: Campeonato(
                campeonatoId: 1,
                logo: nil,
                nomePopular: "Brasileirão",
                edicaoAtual: nil,
                nome: "Campeonato Brasileiro"
            ),
            timeMandante: Time(
                timeId: 5,
                nomePopular: "Fluminense",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/fCMxMMDF2AZPU7LzYKSlig_48x48.png"
            ),
            timeVisitante:  Time(
                timeId: 8,
                nomePopular: "América-MG",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/ZFsHqGsKNQPlCQjZ4Lu-EQ_48x48.png"
            ),
            dataRealizacao: "31/10/2022",
            horaRealizacao: "21:30"
        ),
        Partida(
            placarMandante: 3,
            placarVisitante: 2,
            partidaId: 2,
            campeonato: Campeonato(
                campeonatoId: 2,
                logo: nil,
                nomePopular: "Copa do Brasil",
                edicaoAtual: nil,
                nome: "Copa do Brasil"
            ),
            timeMandante: Time(
                timeId: 6,
                nomePopular: "Athletico-PR",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/LtpA9v-CQ_Qs2bgWVdDXxQ_48x48.png"
            ),
            timeVisitante: Time(
                timeId: 9,
                nomePopular: "São Paulo",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/4w2Z97Hf9CSOqICK3a8AxQ_48x48.png"
            ),
            dataRealizacao: "31/10/2022",
            horaRealizacao: "21:30"
        ),
        Partida(
            placarMandante: 2,
            placarVisitante: 2,
            partidaId: 3,
            campeonato: Campeonato(
                campeonatoId: 1,
                logo: nil,
                nomePopular: "Brasileirão",
                edicaoAtual: nil,
                nome: "Brasileirão"
            ),
            timeMandante: Time(
                timeId: 10,
                nomePopular: "Fortaleza",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/me10ephzRxdj45zVq1Risg_48x48.png"
            ),
            timeVisitante: Time(
                timeId: 11,
                nomePopular: "Botafogo",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/KLDWYp-H8CAOT9H_JgizRg_48x48.png"
            ),
            dataRealizacao: "31/10/2022",
            horaRealizacao: "21:30"
        )
    ]
}
