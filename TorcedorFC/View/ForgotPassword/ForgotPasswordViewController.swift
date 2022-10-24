//
//  ForgotPasswordViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    var forgotPasswordScreen: ForgotPasswordScreen = ForgotPasswordScreen()
    
    override func loadView() {
        self.forgotPasswordScreen = ForgotPasswordScreen()
        self.view = self.forgotPasswordScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.forgotPasswordScreen.delegate(delegate: self)
    }
}

extension ForgotPasswordViewController: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionSubmitButton() {
        print("Submit Funcionando")
    }
    
    
}
