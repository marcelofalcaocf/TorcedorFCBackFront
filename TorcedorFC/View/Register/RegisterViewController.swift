//
//  RegisterViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit

class RegisterViewController: UIViewController {

    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.delegate(delegate: self)

    }
}

extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
