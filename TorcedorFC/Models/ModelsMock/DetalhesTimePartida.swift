//
//  DetalhesTimePartida.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class DetalhesTimePartida : Codable {
    var esquemaTatico: String
    var tecnico: Tecnico
    var titulares: [Jogador]
    var reservas: [Jogador]
    
    init(esquemaTatico: String, tecnico: Tecnico, titulares: [Jogador], reservas: [Jogador]) {
        self.esquemaTatico = esquemaTatico
        self.tecnico = tecnico
        self.titulares = titulares
        self.reservas = reservas
    }
    
    enum CodingKeys: String, CodingKey {
        case esquemaTatico = "esquema_tatico"
        case tecnico, titulares, reservas
    }
}
