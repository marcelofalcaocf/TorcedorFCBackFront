//
//  PartidaCompleta.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

// Esta faltando mapear a propriedade gols pois nao tem modelo nela na api
class PartidaCompleta : Partida {
    var status: String
    var estatisticas: Estatisticas
    var cartoes: Cartoes
    var escalacoes: Escalacoes
    
    init(status: String, estatisticas: Estatisticas, cartoes: Cartoes, escalacoes: Escalacoes, placarMandante: Int, placarVisitante: Int, partidaId: Int, campeonato: Campeonato, timeMandante: Time, timeVisitante: Time) {
        self.status = status
        self.estatisticas = estatisticas
        self.cartoes = cartoes
        self.escalacoes = escalacoes
        super.init(
            placarMandante: placarMandante,
            placarVisitante: placarVisitante,
            partidaId: partidaId,
            campeonato: campeonato,
            timeMandante: timeMandante,
            timeVisitante: timeVisitante
        )
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
