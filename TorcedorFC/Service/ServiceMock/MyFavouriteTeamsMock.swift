//
//  MyFavouriteTeamsMock.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 30/10/22.
//

import Foundation

class MyFavouriteTeamsMock {
    var times: [Time] = [
        Time(
            timeId: 2,
            nomePopular: "Internacional",
            escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/OWVFKuHrQuf4q2Wk0hEmSA_48x48.png"
        ),
        Time(
            timeId: 4,
            nomePopular: "Corinthians",
            escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/tCMSqgXVHROpdCpQhzTo1g_48x48.png"
        )
    ]
    
    var proximosJogos: [PartidaBase] = [
        PartidaBase(
            partidaId: 5,
            campeonato: Campeonato(
                campeonatoId: 1,
                logo: nil,
                nomePopular: "Brasileirão",
                edicaoAtual: nil,
                nome: "Campeonato Brasileiro"
            ),
            timeMandante: Time(
                timeId: 2,
                nomePopular: "Internacional",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/OWVFKuHrQuf4q2Wk0hEmSA_48x48.png"
            ),
            timeVisitante: Time(
                timeId: 6,
                nomePopular: "Athletico-PR",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/LtpA9v-CQ_Qs2bgWVdDXxQ_48x48.png"
            ),
            dataRealizacao: "15/12/2022",
            horaRealizacao: "16:00"
        ),
        PartidaBase(
            partidaId: 13,
            campeonato: Campeonato(
                campeonatoId: 2,
                logo: nil,
                nomePopular: "Copa do Brasil",
                edicaoAtual: nil,
                nome: "Copa do Brasil"
            ),
            timeMandante: Time(
                timeId: 8,
                nomePopular: "América-MG",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/ZFsHqGsKNQPlCQjZ4Lu-EQ_48x48.png"
            ),
            timeVisitante: Time(
                timeId: 4,
                nomePopular: "Corinthians",
                escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/tCMSqgXVHROpdCpQhzTo1g_48x48.png"
            ),
            dataRealizacao: "08/12/2022",
            horaRealizacao: "21:30"
        )
    ]
}
