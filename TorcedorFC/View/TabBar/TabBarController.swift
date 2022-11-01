//
//  TabBarController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }

    private func setupTabBarController() {
//        let viewHome = UINavigationController(rootViewController: HomeViewController())
//        let viewGames = UINavigationController(rootViewController: GamesViewController())
//        let viewTC = UINavigationController(rootViewController: TCViewController())
//        let viewMyFavorites = UINavigationController(rootViewController: MyFavoritesViewController())
//        let viewProfile = UINavigationController(rootViewController: ProfileViewController())
//
//        self.setViewControllers([HomeViewController(), GamesViewController(), TCViewController(), MyFavoritesViewController(), ProfileViewController()], animated: false)
        
        self.setViewControllers([HomeViewController(), GamesViewController(), MyFavoritesViewController(), ProfileViewController()], animated: false)
        self.tabBar.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
        self.tabBarItem.badgeColor = .white
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "house")
        
        items[1].image = UIImage(systemName: "flag.2.crossed")
        
       // items[2].image = UIImage(systemName: "list.bullet")
        
        items[2].image = UIImage(systemName: "star.fill")
        
        items[3].image = UIImage(systemName: "person.fill")
    }
}
