//
//  ForgotPasswordScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit

protocol ForgotPasswordScreenProtocol: AnyObject {
    func actionBackButton()
    func actionSubmitButton()
}

class ForgotPasswordScreen: UIView {
    
    private weak var delegate: ForgotPasswordScreenProtocol?
    
    func delegate(delegate: ForgotPasswordScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoLogin")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var backAppButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoVoltar"), for: .normal)
        button.addTarget(self, action: #selector(self.tappeBackButton), for: .touchUpInside)
        return button
    }()

    
    lazy var forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Recuperar Senha"
        return label
    }()
    
    lazy var explanationPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Para recuperar sua senha, preencha o campo de texto abaixo com seu e-mail cadastrado"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.isSecureTextEntry = true
        textField.placeholder = "E-mail"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Enviar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.white , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedSubmitButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configLogoAppImageView()
        self.configBackAppButton()
        self.configForgotPasswordLabel()
        self.configExplanationPasswordLabel()
        self.configEmailTextField()
        self.configSubmitButton()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
    }
    
    func configSuperView() {
        self.addSubview(logoAppImageView)
        self.addSubview(backAppButton)
        self.addSubview(forgotPasswordLabel)
        self.addSubview(explanationPasswordLabel)
        self.addSubview(emailTextField)
        self.addSubview(submitButton)
    }
    
    @objc private func tappeBackButton() {
        self.delegate?.actionBackButton()
    }
    
    @objc private func tappedSubmitButton() {
        self.delegate?.actionSubmitButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configLogoAppImageView() {
        self.logoAppImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().inset(50)
            make.height.equalTo(167)
        }
    }
    
    func configBackAppButton() {
        self.backAppButton.snp.makeConstraints { make in
            make.top.equalTo(self.logoAppImageView.snp.top)
            make.leading.equalTo(20)
            make.height.width.equalTo(20)
        }
    }
    
    func configForgotPasswordLabel() {
        self.forgotPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(self.logoAppImageView.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().inset(30)
        }
    }
    
    func configExplanationPasswordLabel() {
        self.explanationPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(self.forgotPasswordLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
        }
    }
    
    func configEmailTextField() {
        self.emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.explanationPasswordLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    func configSubmitButton() {
        self.submitButton.snp.makeConstraints { make in
            make.top.equalTo(self.emailTextField.snp.bottom).offset(30)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }
}
