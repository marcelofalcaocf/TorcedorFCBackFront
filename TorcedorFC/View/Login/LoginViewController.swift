//
//  ViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    let viewModel: HomeViewModel = .init()
    var auth: Auth?
    var alert:Alert?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
    
        viewModel.delegate(delegate: self)
        viewModel.getCampeonatos()
        
        auth = Auth.auth()
        alert = Alert(controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        
        
        guard let login = self.loginScreen else { return }
        let vc: TabBarController = TabBarController()

        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { usuario, error in
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção", mensagem: "Atenção dados incorretos, verifique e tente novamente")
            }else {
                if usuario == nil {
                    self.alert?.getAlert(titulo: "Atenção", mensagem: "Tivemos um problema inesperado, tente novamente mais tarde")
                } else {
                    // self.alert?.getAlert(titulo: "Atenção", mensagem: "Parabens, usuario logado com sucesso!")
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }
        })

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

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginScreen?.validateTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
