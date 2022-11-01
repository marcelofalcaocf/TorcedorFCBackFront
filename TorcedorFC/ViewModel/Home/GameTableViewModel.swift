//
//  GameTableViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 31/08/22.
//

import Foundation

protocol GameTableViewModelDelegate: AnyObject {
    func tabelaSuccess()
    func tabelaError()
}

class GameTableViewModel {
    
    private var tabelaDelegate: GameTableViewModelDelegate?
    private let tabelaService: TabelaService = .init()
    var tabela: [TabelaBrasileiraoElement] = []
    
    var tableMock = BrazilianTableMock().brazilianTableData
    var phaseBrazilCupMock = BrazilCupFasesMock().fases
    
    private var faseService: FaseService = .init()
    var fase: [FasesCopaElement] = []
    
    
    public func tabelaDelegate(delegate: GameTableViewModelDelegate) {
        self.tabelaDelegate = delegate
    }
    
    func getTabela(id: Int) {
        switch id {
        case 10:
            tabelaService.getAllListaDeCampeonatos(id: id) { success, error in
                if let success = success {
                    self.tabela = success
                    self.tabelaDelegate?.tabelaSuccess()
                } else {
                    self.tabelaDelegate?.tabelaError()
                }
            }
        case 2:
            faseService.getAllListaDeCampeonatos(id: id) { success, error in
                if let success = success {
                    self.fase = success
                    self.tabelaDelegate?.tabelaSuccess()
                } else {
                    self.tabelaDelegate?.tabelaError()
                }
            }
        default:
            break
        }
    }
    
    func countTableView() -> Int {
        return tableMock.count
    }
    
//    public func getCellViewModel(position: Int) -> DetailChampsTableViewCell {
//        let game = tableMock[position]
//        let cell = DetailChampsTableViewCell()
//        cell.setUpCell(data: game)
//        return cell
//    }
    
    func countCupTableView() -> Int {
        return phaseBrazilCupMock.count
    }
}
