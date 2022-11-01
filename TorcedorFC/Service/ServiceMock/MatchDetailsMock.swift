//
//  MatchDetails.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 30/10/22.
//

import Foundation

class MatchDetailsMock {
    var matchDetails: PartidaCompleta = PartidaCompleta(
        status: "Finalizado",
        estatisticas: Estatisticas(
            mandante: Estatistica(
                posseDeBola: "48%",
                escanteios: 7,
                impedimentos: 0,
                faltas: 16,
                passes: Passes(
                    total: 491,
                    precisao: "86%"
                ),
                finalizacao: Finalizacao(
                    total: 24,
                    noGol: 8
                )
            ),
            visitante: Estatistica(
                posseDeBola: "52%",
                escanteios: 5,
                impedimentos: 3,
                faltas: 14,
                passes: Passes(
                    total: 571,
                    precisao: "88%"
                ),
                finalizacao: Finalizacao(
                    total: 10,
                    noGol: 6
                )
            )
        ),
        cartoes: Cartoes(
            amarelo: CartaoCor(
                mandante: [
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 2,
                            nome: "Igor Gomes"
                        ),
                        minuto: "10"
                    ),
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 4,
                            nome: "Vitão"
                        ),
                        minuto: "16"
                    ),
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 6,
                            nome: "C. de Pena"
                        ),
                        minuto: "88"
                    ),
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 2,
                            nome: "Igor Gomes"
                        ),
                        minuto: "58"
                    )
                ],
                visitante: [
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 26,
                            nome: "G. Gomez"
                        ),
                        minuto: "41"
                    ),
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 34,
                            nome: "Roni"
                        ),
                        minuto: "63"
                    )
                ]
            ),
            vermelho: CartaoCor(
                mandante: [
                    EventoJogador(
                        atleta: Atleta(
                            atletaId: 2,
                            nome: "Igor Gomes"
                        ),
                        minuto: "58"
                    )
                ],
                visitante: nil
            )
        ),
        escalacoes: Escalacoes(
            mandante: DetalhesTimePartida(
                esquemaTatico: "451",
                tecnico: Tecnico(
                    tecnicoId: 1,
                    nomePopular: "Mano Menezes"
                ),
                titulares: [
                    Jogador(
                        atleta: Atleta(
                            atletaId: 1,
                            nome: "Keiller"
                        ),
                        camisa: "12",
                        ordem: 1,
                        posicao: Posicao(
                            sigla: "GOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 2,
                            nome: "Igor Gomes"
                        ),
                        camisa: "21",
                        ordem: 2,
                        posicao: Posicao(
                            sigla: "LAD"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 3,
                            nome: "R Moledo"
                        ),
                        camisa: "4",
                        ordem: 3,
                        posicao: Posicao(
                            sigla: "ZAD"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 4,
                            nome: "Vitão"
                        ),
                        camisa: "44",
                        ordem: 4,
                        posicao: Posicao(
                            sigla: "ZAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 5,
                            nome: "Renê"
                        ),
                        camisa: "6",
                        ordem: 5,
                        posicao: Posicao(
                            sigla: "LAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 6,
                            nome: "C. de Pena"
                        ),
                        camisa: "14",
                        ordem: 6,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 7,
                            nome: "Edenilson"
                        ),
                        camisa: "8",
                        ordem: 7,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 8,
                            nome: "Pedro Henrique"
                        ),
                        camisa: "28",
                        ordem: 8,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 9,
                            nome: "A. Patrik"
                        ),
                        camisa: "10",
                        ordem: 9,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 10,
                            nome: "Wanderson"
                        ),
                        camisa: "11",
                        ordem: 10,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 11,
                            nome: "B. Romero"
                        ),
                        camisa: "9",
                        ordem: 11,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    )
                ],
                reservas: [
                    Jogador(
                        atleta: Atleta(
                            atletaId: 12,
                            nome: "Daniel"
                        ),
                        camisa: "1",
                        ordem: 1,
                        posicao: Posicao(
                            sigla: "GOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 13,
                            nome: "Kaique Rocha"
                        ),
                        camisa: "3",
                        ordem: 2,
                        posicao: Posicao(
                            sigla: "ZAD"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 14,
                            nome: "Taison"
                        ),
                        camisa: "7",
                        ordem: 3,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 15,
                            nome: "David Corrêa da Fonseca"
                        ),
                        camisa: "17",
                        ordem: 4,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 16,
                            nome: "Weverton"
                        ),
                        camisa: "22",
                        ordem: 5,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 17,
                            nome: "Estêvão"
                        ),
                        camisa: "26",
                        ordem: 6,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 18,
                            nome: "Maurício"
                        ),
                        camisa: "27",
                        ordem: 7,
                        posicao: Posicao(
                            sigla: "ZAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 19,
                            nome: "Alexandre Alemão"
                        ),
                        camisa: "35",
                        ordem: 8,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 20,
                            nome: "Thauan Lara"
                        ),
                        camisa: "36",
                        ordem: 9,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 21,
                            nome: "Lucas Ramos"
                        ),
                        camisa: "37",
                        ordem: 10,
                        posicao: Posicao(
                            sigla: "LAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 22,
                            nome: "Matheus dos Santos Dias"
                        ),
                        camisa: "41",
                        ordem: 11,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 23,
                            nome: "Lincon"
                        ),
                        camisa: "58",
                        ordem: 12,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    )
                ]
            ),
            visitante: DetalhesTimePartida(
                esquemaTatico: "433",
                tecnico: Tecnico(
                    tecnicoId: 2,
                    nomePopular: "Abel Ferreira"
                ),
                titulares: [
                    Jogador(
                        atleta: Atleta(
                            atletaId: 24,
                            nome: "Werverton"
                        ),
                        camisa: "12",
                        ordem: 1,
                        posicao: Posicao(
                            sigla: "GOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 25,
                            nome: "M. Rocha"
                        ),
                        camisa: "2",
                        ordem: 2,
                        posicao: Posicao(
                            sigla: "LAD"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 26,
                            nome: "G. Gomez"
                        ),
                        camisa: "15",
                        ordem: 3,
                        posicao: Posicao(
                            sigla: "ZAD"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 27,
                            nome: "Murilo"
                        ),
                        camisa: "26",
                        ordem: 4,
                        posicao: Posicao(
                            sigla: "ZAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 28,
                            nome: "J Piquerez"
                        ),
                        camisa: "22",
                        ordem: 5,
                        posicao: Posicao(
                            sigla: "LAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 29,
                            nome: "Danilo"
                        ),
                        camisa: "29",
                        ordem: 6,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 30,
                            nome: "Ze Rafael"
                        ),
                        camisa: "8",
                        ordem: 7,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 31,
                            nome: "Dudu"
                        ),
                        camisa: "7",
                        ordem: 8,
                        posicao: Posicao(
                            sigla: "LAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 32,
                            nome: "G. Scarpa"
                        ),
                        camisa: "14",
                        ordem: 9,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 33,
                            nome: "Mayke"
                        ),
                        camisa: "12",
                        ordem: 10,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 34,
                            nome: "Roni"
                        ),
                        camisa: "10",
                        ordem: 11,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    )
                ],
                reservas: [
                    Jogador(
                        atleta: Atleta(
                            atletaId: 35,
                            nome: "Miguel Merentiel"
                        ),
                        camisa: "9",
                        ordem: 1,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 36,
                            nome: "Wesley Ribeiro Silva"
                        ),
                        camisa: "11",
                        ordem: 2,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 37,
                            nome: "Luan Garcia Teixeira"
                        ),
                        camisa: "13",
                        ordem: 3,
                        posicao: Posicao(
                            sigla: "ZAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 38,
                            nome: "Endrick"
                        ),
                        camisa: "16",
                        ordem: 4,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 39,
                            nome: "Breno Lopes"
                        ),
                        camisa: "19",
                        ordem: 5,
                        posicao: Posicao(
                            sigla: "LAD"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 40,
                            nome: "Eduard Atuesta"
                        ),
                        camisa: "20",
                        ordem: 6,
                        posicao: Posicao(
                            sigla: "ZAE"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 41,
                            nome: "Gabriel Menino"
                        ),
                        camisa: "25",
                        ordem: 7,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 42,
                            nome: "Bruno Tabata"
                        ),
                        camisa: "27",
                        ordem: 8,
                        posicao: Posicao(
                            sigla: "ATA"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 43,
                            nome: "Rafael Navarro"
                        ),
                        camisa: "29",
                        ordem: 9,
                        posicao: Posicao(
                        sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 44,
                            nome: "Gustavo Garcia"
                        ),
                        camisa: "32",
                        ordem: 10,
                        posicao: Posicao(
                            sigla: "VOL"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 45,
                            nome: "Vanderlan"
                        ),
                        camisa: "36",
                        ordem: 11,
                        posicao: Posicao(
                            sigla: "MEC"
                        )
                    ),
                    Jogador(
                        atleta: Atleta(
                            atletaId: 46		,
                            nome: "Marcelo Lomba"
                        ),
                        camisa: "42",
                        ordem: 12,
                        posicao: Posicao(
                            sigla: "GOL"
                        )
                    )
                ]
            )
        ),
        placarMandante: 1,
        placarVisitante: 2,
        partidaId: 8,
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
            timeId: 1,
            nomePopular: "Palmeiras",
            escudo: "https://ssl.gstatic.com/onebox/media/sports/logos/7spurne-xDt2p6C0imYYNA_48x48.png"
        ),
        dataRealizacao: "Torcedor Teste 01",
        horaRealizacao: "Torcedor Teste 02"
    )
}
