//
//  PhaseDetailViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/10/22.
//

import UIKit

class PhaseDetailViewController: UIViewController {

    var phaseDetailScreen: PhaseDetailScreen = .init()
    
    override func loadView() {
        self.phaseDetailScreen = PhaseDetailScreen()
        self.view = self.phaseDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phaseDetailScreen.configTableViewProtocols(delegate: self, dataSource: self)

    }
}

extension PhaseDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

extension PhaseDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: PhaseDetailTableViewCell.identifier, for: indexPath) as? PhaseDetailTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
}
