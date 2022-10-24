//
//  GamesViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class GamesViewController: UIViewController {

    var gamesScreen: GamesScreen = .init()
    
    override func loadView() {
        self.gamesScreen = GamesScreen()
        self.view = self.gamesScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.title = "Games"
        gamesScreen.configTableViewProtocols(delegate: self, dataSource: self)
        gamesScreen.configCollectionViewProtocols(delegate: self, dataSource: self)
    }
}

extension GamesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: GamesDetailViewController = GamesDetailViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
    }
}

extension GamesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as? GamesTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
}

extension GamesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GameDaysCollectionViewCell.identifier, for: indexPath) as? GameDaysCollectionViewCell {
           return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selecionado")
    }
}
