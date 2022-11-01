//
//  Estatisitica.swift
//  TorcedorFC
//
//  Created by Tiago & Karina on 28/10/22.
//

import Foundation

class Estatistica : Codable {
    var posseDeBola: String
    var escanteios: Int
    var impedimentos: Int
    var faltas: Int
    var passes: Passes
    var finalizacao: Finalizacao
    
    init(posseDeBola: String, escanteios: Int, impedimentos: Int, faltas: Int, passes: Passes, finalizacao: Finalizacao) {
        self.posseDeBola = posseDeBola
        self.escanteios = escanteios
        self.impedimentos = impedimentos
        self.faltas = faltas
        self.passes = passes
        self.finalizacao = finalizacao
    }
    
    enum CodingKeys: String, CodingKey {
        case escanteios, impedimentos, faltas, passes, finalizacao
        case posseDeBola = "posse_de_bola"
    }
}
