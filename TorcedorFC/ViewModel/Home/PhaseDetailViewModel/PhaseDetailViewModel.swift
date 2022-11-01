//
//  PhaseDetailViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 31/10/22.
//

import Foundation

class PhaseDetailViewModel {
    
    var position: Int = 0
    let detailFase: Fase = BrazilCupFaseMock().fase
    
    func gettingPhase() {
        if position != 0 {
            position = detailFase.faseId
        }
    }
    
    public func configCountTableView() -> Int {
        return detailFase.chaves.count 
    }
}
