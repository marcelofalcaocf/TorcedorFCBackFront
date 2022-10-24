//
//  ViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    let viewModel: HomeViewModel = .init()
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
    
        viewModel.delegate(delegate: self)
        viewModel.getCampeonatos()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        let vc: TabBarController = TabBarController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionForgotPasswordButton() {
        let vc: ForgotPasswordViewController = ForgotPasswordViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionLoginGoogleButton() {
        print("está funcionando")
    }
    
    func actionLoginFacebookButton() {
        print("está funcionando")
    }
    
    func actionRegisterPasswordButton() {
        let vc: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}


extension LoginViewController: HomeViewModelDelegate {
    func success() {
        print("Deu bom!")
    }
    
    func error() {
        print("Deu ruim")
    }
}
