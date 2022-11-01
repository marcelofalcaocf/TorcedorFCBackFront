//
//  PhaseDetailViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/10/22.
//

import UIKit

class PhaseDetailViewController: UIViewController {

    var phaseDetailScreen: PhaseDetailScreen = .init()
    var viewModel = PhaseDetailViewModel()
    
    
    override func loadView() {
        self.phaseDetailScreen = PhaseDetailScreen()
        self.view = self.phaseDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phaseDetailScreen.configTableViewProtocols(delegate: self, dataSource: self)
        viewModel.gettingPhase()
        phaseDetailScreen.cupLabel.text = viewModel.detailFase.nome
    }
}

extension PhaseDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

extension PhaseDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.configCountTableView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: PhaseDetailTableViewCell.identifier, for: indexPath) as? PhaseDetailTableViewCell {
            cell.createView(data: viewModel.detailFase.chaves[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
