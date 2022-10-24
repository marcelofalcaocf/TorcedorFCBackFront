//
//  RedefinePasswordScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 17/10/22.
//

import UIKit

protocol RedefinePasswordScreenProtocol: AnyObject {
    func actionBackAppButton()
    func actionBackLogin()
}

class RedefinePasswordScreen: UIView {
    
    private weak var delegate: RedefinePasswordScreenProtocol?
    
    func delegate(delegate: RedefinePasswordScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoLogin")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var oldPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Senha antiga:"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var newPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Nova senha:"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var confirmPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Confirme nova senha:"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.white , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0) // azul escuro
        button.addTarget(self, action: #selector(self.tappedBackLogin), for: .touchUpInside)
        return button
    }()
    
    lazy var backAppButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoVoltar"), for: .normal)
        button.addTarget(self, action: #selector(self.tappedBackAppButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        
        configLogoAppImageView()
        configOldPassword()
        configNewPassword()
        configConfirmPassword()
        configLoginButton()
        configBackAppButton()
    }
    
    private func configSuperView() {
        addSubview(logoAppImageView)
        addSubview(oldPassword)
        addSubview(newPassword)
        addSubview(confirmPassword)
        addSubview(loginButton)
        addSubview(backAppButton)
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0) //verde
    }
    
    @objc private func tappedBackAppButton() {
        delegate?.actionBackAppButton()
    }
    
    @objc private func tappedBackLogin() {
        delegate?.actionBackLogin()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configLogoAppImageView() {
        logoAppImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().inset(50)
            make.height.equalTo(250)
        }
    }
    
    private func configOldPassword() {
        oldPassword.snp.makeConstraints { make in
            make.top.equalTo(self.logoAppImageView.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    private func configNewPassword() {
        newPassword.snp.makeConstraints { make in
            make.top.equalTo(self.oldPassword.snp.bottom).offset(20)
            make.leading.equalTo(self.oldPassword.snp.leading)
            make.trailing.equalTo(self.oldPassword.snp.trailing)
            make.height.equalTo(self.oldPassword.snp.height)
        }
    }
    
    private func configConfirmPassword() {
        confirmPassword.snp.makeConstraints { make in
            make.top.equalTo(self.newPassword.snp.bottom).offset(20)
            make.leading.equalTo(self.oldPassword.snp.leading)
            make.trailing.equalTo(self.oldPassword.snp.trailing)
            make.height.equalTo(self.oldPassword.snp.height)
        }
    }
    
    private func configLoginButton() {
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(self.confirmPassword.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(45)
        }
    }
    
    private func configBackAppButton() {
        backAppButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(10)
            make.width.height.equalTo(20)
            make.leading.equalToSuperview().offset(10)
        }
    }
}
