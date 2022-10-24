//
//  TCViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class TCViewController: UIViewController {

    var tcScreen: TCScreen?
    
    override func loadView() {
        self.tcScreen = TCScreen()
        self.view = self.tcScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.title = "TC"
        tcScreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension TCViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: TeamDetailsTableViewCell.identifier, for: indexPath) as? TeamDetailsTableViewCell {
            return cell
        }
        return UITableViewCell()
    }    
}
