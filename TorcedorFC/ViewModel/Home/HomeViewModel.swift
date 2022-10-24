//
//  ListaDeCampeonatoViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func success()
    func error()
}

class HomeViewModel {
    
    private var delegate: HomeViewModelDelegate?
    private let service: CampeonatoService = .init()
    var campeonatos: [ListaDeCampeonato] = []
    var filterCampeonatos: [ListaDeCampeonato] = []
    
    public func delegate(delegate: HomeViewModelDelegate) {
        self.delegate = delegate
    }
    
    var numberOfRow: Int {
        return filterCampeonatos.count
    }
    
    func getCampeonatos() {
        service.getAllListaDeCampeonatos { success, error in
            if let success = success {
                self.campeonatos = success
                self.filterCampeonatos = self.campeonatos.filter { $0.campeonatoID == 10 || $0.campeonatoID == 2 }
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
    
    func getCampeonatoId(indexPath: Int) -> Int {
        switch indexPath {
        case 0:
            return 10
            
        default:
            return 2
        }
    }
    
    func screenPass(indexPath: Int) -> UIViewController {
        if indexPath == 0 {
            let vc: GameTableViewController = GameTableViewController()
            vc.campeonatoId = getCampeonatoId(indexPath: indexPath)
            return vc
        } else {
            let vc: CupDetailViewController = CupDetailViewController()
            vc.campeonatoId = getCampeonatoId(indexPath: indexPath)
            return vc
        }
    }
}
