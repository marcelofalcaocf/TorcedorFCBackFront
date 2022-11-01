//
//  GamesViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 01/11/22.
//

import Foundation

class GamesViewModel {
    
    private var games: [Partida] = LiveMatchesMock().partidas
    
    func countTableView() -> Int {
        return games.count
    }
    
    func configTableView(indexPath: Int) -> Partida {
        return games[indexPath]
    }
}
