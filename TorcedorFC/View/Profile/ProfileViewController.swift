//
//  ProfileViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class ProfileViewController: UIViewController {

    var profileScreen: ProfileScreen = .init()
    var viewModel: ProfileViewModel = .init()
    
    override func loadView() {
        self.profileScreen = ProfileScreen()
        self.view = self.profileScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        profileScreen.delegate(delegate: self)
        configView()
    }
    
    private func configView() {
        profileScreen.nameLabel.text = viewModel.person?.name
        profileScreen.emailLabel.text = viewModel.person?.email
    }
    
}



extension ProfileViewController: ProfileScreenProtocol {
    func actionExitButton() {
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
                let loginViewController: LoginViewController = LoginViewController()

                navigationController?.pushViewController(loginViewController, animated: false)
            } catch let signOutError as NSError {
                print("Error signing out: %@", signOutError)
            }
    }
    
    func actionRedefinePasswordButton() {
        let vc: RedefinePasswordViewController = RedefinePasswordViewController()
        
        navigationController?.pushViewController(vc, animated: false)
    }
}
