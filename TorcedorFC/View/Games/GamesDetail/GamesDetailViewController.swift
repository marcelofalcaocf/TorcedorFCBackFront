//
//  GamesDetailViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 02/09/22.
//

import UIKit

class GamesDetailViewController: UIViewController {
    
    
    var gamesDetailScreen: GamesDetailScreen = .init()
    
    override func loadView() {
        self.gamesDetailScreen = GamesDetailScreen()
        self.view = self.gamesDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamesDetailScreen.delegate(delegate: self)
        gamesDetailScreen.configTableViewProtocols(dataSource: self, delegate: self)
    }
}

extension GamesDetailViewController: GameDetailScreenProtocol {
    func actionBackButton() {
        //        if gamesDetailScreen.segmentedControl.selectedSegmentIndex == 0 {
        //            print("bola")
        //        } else {
        //            print("chuteira")
        //        }
        navigationController?.popViewController(animated: false)
    }
    
    func chooseTableView() {
        gamesDetailScreen.statisticTableView.reloadData()
    }
}

extension GamesDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if gamesDetailScreen.segmentedControl.selectedSegmentIndex == 1 {
            return 400
        } else {
            return 40
        }
    }
}

extension GamesDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if gamesDetailScreen.segmentedControl.selectedSegmentIndex == 0 {
            return 11
        } else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch gamesDetailScreen.segmentedControl.selectedSegmentIndex {
        case 0:
        if let cell = tableView.dequeueReusableCell(withIdentifier: StatisticGameTableViewCell.identifier, for: indexPath) as? StatisticGameTableViewCell {
        return cell
        }
        case 1:
        if let cell = tableView.dequeueReusableCell(withIdentifier: LinesUpsGamesTableViewCell.identifier, for: indexPath) as? LinesUpsGamesTableViewCell {
        return cell
        }
        default:
            break
        }
        return UITableViewCell()
    }
}

