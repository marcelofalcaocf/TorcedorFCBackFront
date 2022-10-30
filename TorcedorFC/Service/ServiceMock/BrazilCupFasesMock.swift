//
//  BrazilsCupService.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 23/10/22.
//

import Foundation

class BrazilCupFasesMock {
    var temporada: String = "2022"
    var fases: [FaseBase] = [
        FaseBase(faseId: 1, nome: "Primeira Fase"),
        FaseBase(faseId: 2, nome: "Segunda Fase"),
        FaseBase(faseId: 3, nome: "Terceira Fase"),
        FaseBase(faseId: 4, nome: "Oitavas de Final"),
        FaseBase(faseId: 5, nome: "Quartas de Final"),
        FaseBase(faseId: 6, nome: "Semi Final"),
        FaseBase(faseId: 7, nome: "Final")
    ]
}
