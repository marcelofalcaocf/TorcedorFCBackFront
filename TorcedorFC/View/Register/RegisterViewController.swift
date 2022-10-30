//
//  RegisterViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit
//import FirebaseAuth

class RegisterViewController: UIViewController {

    var registerScreen: RegisterScreen?
    //var auth: Auth?
    var alert: Alert?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerScreen?.delegate(delegate: self)
        registerScreen?.configTextFieldDelegate(delegate: self)
        //auth = Auth.auth()
        alert = Alert(controller: self)
    }
}

extension RegisterViewController: RegisterScreenProtocol {
    func actionRegisterButton() {
        guard let register = self.registerScreen else {return}
        
        /*self.auth?.createUser(withEmail: register.getEmail(), password: register.getPassword() , completion: { result, error in
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção", mensagem: "Erro ao cadastrar, verifique os dados e tente novamente")
            }else {
                self.alert?.getAlert(titulo: "Parabéns", mensagem: "Usuário cadastrado com sucesso", completion: {
                    self.navigationController?.popViewController(animated: true)
                })
            }
        })*/
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
