//
//  LoginScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit
import SnapKit

protocol LoginScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionForgotPasswordButton()
    func actionLoginGoogleButton()
    func actionLoginFacebookButton()
    func actionRegisterPasswordButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: LoginScreenProtocol?
    
    func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoLogin")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Seu aplicativo para ficar ligado no mundo do futebol!"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Digite seu E-mail"
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
        textField.placeholder = "Digite sua senha"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var forgoutPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu a senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0), for: .normal) //Azul
        button.addTarget(self, action: #selector(self.tappedForgotPasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.darkGray , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0) // azul escuro
        button.addTarget(self, action: #selector(self.tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var orLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0) // azul escuro
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "OU"
        return label
    }()
    
    lazy var googleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "googleButton"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 33.5
        button.addTarget(self, action: #selector(self.tappedLoginGoogleButton), for: .touchUpInside)
        return button
    }()
    
    lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "facebookButton"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 33.5
        button.addTarget(self, action: #selector(self.tappedLoginFbButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Nao possui conta? Cadastre-se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(self.tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configLogoAppImageView()
        self.configWelcomeLabel()
        self.configEmailTextField()
        self.configPasswordTextField()
        self.configForgoutPasswordButton()
        self.configLoginButton()
        self.configOrLabel()
        self.configGoogleButton()
        self.configFacebookButton()
        self.configRegisterButton()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0) //verde
    }
    
    private func configSuperView() {
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.welcomeLabel)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.forgoutPasswordButton)
        self.addSubview(self.loginButton)
        self.addSubview(self.orLabel)
        self.addSubview(self.googleButton)
        self.addSubview(self.facebookButton)
        self.addSubview(self.registerButton)
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }
    
    @objc private func tappedLoginButton() {
        self.delegate?.actionLoginButton()
    }
    
    @objc private func tappedForgotPasswordButton() {
        self.delegate?.actionForgotPasswordButton()
    }
    
    @objc private func tappedLoginGoogleButton() {
        self.delegate?.actionLoginGoogleButton()
    }
    
    @objc private func tappedLoginFbButton() {
        self.delegate?.actionLoginFacebookButton()
    }
    
    @objc private func tappedRegisterButton() {
        self.delegate?.actionRegisterPasswordButton()
    }
    
    public func validateTextFields() {
        let email: String = self.emailTextField.text ?? "" // sao opcionais
        let password: String = self.passwordTextField.text ?? "" // sao opcionais

        if email != "" && password != "" { // poderia colocar "if !email.isEmpty && !password.isEmpty {}
            self.configButtonEnabel(true)
        } else {
            self.configButtonEnabel(false)
        }
    }
    
    private func configButtonEnabel(_ enabel: Bool) {
        if enabel {
            self.loginButton.setTitleColor(.white, for: .normal)
            self.loginButton.isEnabled = true // permitido apertar o botao "isEnabled"
        } else {
            self.loginButton.setTitleColor(.darkGray, for: .normal)
            self.loginButton.isEnabled = false // nao permitido apertar o botao
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
    func configWelcomeLabel() {
        self.welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.logoAppImageView.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    func configEmailTextField() {
        self.emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.welcomeLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    func configPasswordTextField() {
        self.passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(self.emailTextField.snp.bottom).offset(15)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }
    
    func configForgoutPasswordButton() {
        self.forgoutPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
        }
    }
    
    func configLoginButton() {
        self.loginButton.snp.makeConstraints { make in
            make.top.equalTo(self.forgoutPasswordButton.snp.bottom).offset(15)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }
    
    func configOrLabel() {
        self.orLabel.snp.makeConstraints { make in
            make.top.equalTo(self.loginButton.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
            make.height.equalTo(45)
            
        }
    }
    
    func configGoogleButton() {
        self.googleButton.snp.makeConstraints { make in
            make.top.equalTo(self.orLabel.snp.bottom).offset(15)
            make.leading.equalTo(75)
            make.height.width.equalTo(67)
        }
    }
    
    func configFacebookButton() {
        self.facebookButton.snp.makeConstraints { make in
            make.top.equalTo(self.orLabel.snp.bottom).offset(20)
            make.trailing.equalToSuperview().inset(75)
            make.height.width.equalTo(67)
        }
    }
    
    func configRegisterButton() {
        self.registerButton.snp.makeConstraints { make in
            make.top.equalTo(self.googleButton.snp.bottom).offset(20)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(45)
        }
    }
}
