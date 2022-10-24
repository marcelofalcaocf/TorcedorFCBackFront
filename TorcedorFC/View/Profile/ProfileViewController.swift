//
//  ProfileViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class ProfileViewController: UIViewController {

    var profileScreen: ProfileScreen = .init()
    
    override func loadView() {
        self.profileScreen = ProfileScreen()
        self.view = self.profileScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        profileScreen.delegate(delegate: self)
        // Do any additional setup after loading the view.
    }
}

extension ProfileViewController: ProfileScreenProtocol {
    func actionRedefinePasswordButton() {
        let vc: RedefinePasswordViewController = RedefinePasswordViewController()
        
        navigationController?.pushViewController(vc, animated: false)
    }
    
    
}
