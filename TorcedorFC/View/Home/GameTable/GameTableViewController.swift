//
//  GameTableViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 31/08/22.
//

import UIKit

class GameTableViewController: UIViewController {

    var gameTableScreen: GameTableScreen = .init()
    var viewModel: GameTableViewModel = .init()
    var campeonatoId: Int = 0
    
    override func loadView() {
        self.gameTableScreen = GameTableScreen()
        self.view = self.gameTableScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameTableScreen.delegate(delegate: self)
        gameTableScreen.configTableViewProtocols(delegate: self, dataSource: self)
        
        viewModel.tabelaDelegate(delegate: self)
        viewModel.getTabela(id: campeonatoId)
    }
}

extension GameTableViewController: GameTableScreenProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: false)
    }
}

extension GameTableViewController: GameTableViewModelDelegate {
    func tabelaSuccess() {
        DispatchQueue.main.async {
            print("Deu certo")
        }
    }
    
    func tabelaError() {
        DispatchQueue.main.async {
            print("Deu errado")
        }
    }
}

extension GameTableViewController: UITableViewDelegate {
    
}

extension GameTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.countTableView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: DetailChampsTableViewCell.identifier, for: indexPath) as? DetailChampsTableViewCell {
            
            cell.setUpCell(data: viewModel.tableMock[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
