//
//  RegisterScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit

protocol RegisterScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
}

class RegisterScreen: UIView {
    
    private weak var delegate: RegisterScreenProtocol?
    
    func delegate(delegate: RegisterScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoLogin")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var introductionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Está mais perto de ser um Torcedor FC de carteirinha, preencha os campos abaixo."
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Nome"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "E-mail"
        textField.textColor = .darkGray
        return textField
    }()

    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.placeholder = "Senha"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.placeholder = "Confirmar Senha"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.white , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Já possui conta? Faça seu login!", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(self.tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame )
        self.configBackGround()
        self.configSuperView()
        
        self.configLogoAppImageView()
        self.configIntroductionLabel()
        self.configNameTextField()
        self.configEmailTextField()
        self.configPasswordTextField()
        self.configConfirmPasswordTextField()
        self.configRegisterButton()
        self.configBackButton()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
    }
    
    func configSuperView() {
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.introductionLabel)
        self.addSubview(self.nameTextField)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.confirmPasswordTextField)
        self.addSubview(self.registerButton)
        self.addSubview(self.backButton)
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.nameTextField.delegate = delegate
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
        self.confirmPasswordTextField.delegate = delegate
    }
    
    @objc private func tappedBackButton() {
        self.delegate?.actionBackButton()
    }
    
    @objc private func tappedRegisterButton() {
        self.delegate?.actionRegisterButton()
    }
    
    public func validaTextFields() {
        let email: String = self.emailTextField.text ?? "" // sao opcionais
        let password: String = self.passwordTextField.text ?? "" // sao opcionais
        let confirmPassword: String = self.confirmPasswordTextField.text ?? ""
        
        if email != "" && password != "" && confirmPassword == password { // poderia colocar "if !email.isEmpty && !password.isEmpty {}
            self.configButtonEnabel(true)
        } else {
            self.configButtonEnabel(false)
        }
    }
    
    private func configButtonEnabel(_ enabel: Bool) {
        if enabel {
            self.registerButton.setTitleColor(.white, for: .normal)
            self.registerButton.isEnabled = true // permitido apertar o botao "isEnabled"
        } else {
            self.registerButton.setTitleColor(.lightGray, for: .normal)
            self.registerButton.isEnabled = false // nao permitido apertar o botao
        }
    }
    
    public func getEmail() -> String {
        return self.emailTextField.text ?? ""
    }
    
    public func getPassword() -> String {
        return self.passwordTextField.text ?? ""
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configLogoAppImageView() {
        self.logoAppImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().inset(50)
            make.height.equalTo(130)
        }
    }
    
    func configIntroductionLabel() {
        self.introductionLabel.snp.makeConstraints { make in
            make.top.equalTo(self.logoAppImageView.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
        }
    }
    
    func configNameTextField() {
        self.nameTextField.snp.makeConstraints { make in
            make.top.equalTo(self.introductionLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    func configEmailTextField() {
        self.emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.nameTextField.snp.bottom).offset(10)
            make.leading.equalTo(self.nameTextField.snp.leading)
            make.trailing.equalTo(self.nameTextField.snp.trailing)
            make.height.equalTo(45)
        }
    }
    
    func configPasswordTextField() {
        self.passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(self.emailTextField.snp.bottom).offset(10)
            make.leading.equalTo(self.nameTextField.snp.leading)
            make.trailing.equalTo(self.nameTextField.snp.trailing)
            make.height.equalTo(45)
        }
    }
    
    func configConfirmPasswordTextField() {
        self.confirmPasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(10)
            make.leading.equalTo(self.nameTextField.snp.leading)
            make.trailing.equalTo(self.nameTextField.snp.trailing)
            make.height.equalTo(45)
        }
    }
    
    func configRegisterButton() {
        self.registerButton.snp.makeConstraints { make in
            make.top.equalTo(self.confirmPasswordTextField.snp.bottom).offset(20)
            make.leading.equalTo(self.nameTextField.snp.leading)
            make.trailing.equalTo(self.nameTextField.snp.trailing)
            make.height.equalTo(45)
        }
    }
    
    func configBackButton() {
        self.backButton.snp.makeConstraints { make in
            make.top.equalTo(self.registerButton.snp.bottom).offset(20)
            make.leading.equalTo(self.nameTextField.snp.leading)
            make.trailing.equalTo(self.nameTextField.snp.trailing)
        }
    }
    
}
