//
//  RedefinePasswordViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 17/10/22.
//

import UIKit

class RedefinePasswordViewController: UIViewController {

    var redefinePassword: RedefinePasswordScreen = .init()
    
    override func loadView() {
        self.redefinePassword = RedefinePasswordScreen()
        self.view = self.redefinePassword
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redefinePassword.delegate(delegate: self)

        // Do any additional setup after loading the view.
    }
}

extension RedefinePasswordViewController: RedefinePasswordScreenProtocol {
    func actionBackAppButton() {
        navigationController?.popViewController(animated: false)
    }
    
    func actionBackLogin() {
        let vc: LoginViewController = LoginViewController()
        navigationController?.pushViewController(vc, animated: false)
    }
}
