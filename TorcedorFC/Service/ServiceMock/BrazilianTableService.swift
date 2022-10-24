//
//  BrazilianTableService.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 23/10/22.
//

import Foundation

class BrazilianTableService {
    
    var teamList: [TeamBrazilianTable] = []
    
    private func createTableList() {
        let teams: [TeamBrazilianTable] = [TeamBrazilianTable(placing: 1,
                                                     team: "Palmeiras",
                                                     logo: "Palmeiras",
                                                     punctuation: 71,
                                                     gamesPlayed: 33,
                                                     wins: 20,
                                                     draws: 11,
                                                     defeats: 2
        ),
        TeamBrazilianTable(placing: 2,
                       team: "Internacional",
                       logo: "Internacional",
                       punctuation: 60,
                       gamesPlayed: 32,
                       wins: 16,
                       draws: 12,
                       defeats: 4
                      ),
        TeamBrazilianTable(placing: 3,
                       team: "Flamengo",
                       logo: "Flamengo",
                       punctuation: 58,
                       gamesPlayed: 33,
                       wins: 17,
                       draws: 7,
                       defeats: 9
                      ),
        TeamBrazilianTable(placing: 4, team: "Corinthians", logo: "Corinthians", punctuation: 57, gamesPlayed: 33, wins: 16, draws: 9, defeats: 7)]
        
        teamList = teams
    }
    
}
