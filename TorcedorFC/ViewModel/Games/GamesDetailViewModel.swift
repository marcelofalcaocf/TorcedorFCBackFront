//
//  GamesDetailViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 01/11/22.
//

import Foundation

class GamesDetailViewModel {
    
    var gamesDetail: PartidaCompleta = MatchDetailsMock().matchDetails
    
    func countCellStatistics() -> Int {
        return 6
    }
    
    func countCellLinesUps() -> Int {
        return 2
    }
}
