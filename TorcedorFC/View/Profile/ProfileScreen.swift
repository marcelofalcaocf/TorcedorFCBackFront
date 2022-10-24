//
//  ProfileScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 27/08/22.
//

import UIKit

protocol ProfileScreenProtocol: AnyObject {
    func actionRedefinePasswordButton()
}

class ProfileScreen: UIView {
    
    private weak var delegate: ProfileScreenProtocol?
    
    func delegate(delegate: ProfileScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var backgrondOnTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)// 0.23
        return view
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoUser")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.layer.cornerRadius = 50
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textAlignment = .center
        label.text = "Marcelo Falcão"
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.text = "marcelo_falcaoc@gmail.com"
        return label
    }()
    
    lazy var favoriteTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.40)
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.text = "Time do coração"
        return label
    }()
    
    lazy var favoriteTimeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Alterar time do coração", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.white , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        // button.addTarget(self, action: #selector(self.tappedForgotPasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var resetPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Redefinir Senha", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0) , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(self.tappedRedefinePasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var exitAppButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sair do Torcedor", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.white , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        // button.addTarget(self, action: #selector(self.tappedForgotPasswordButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configBackgrondOnTop()
        self.configLogoAppImageView()
        self.configUserImageView()
        self.configNameLabel()
        self.configEmailLabel()
        self.configFavoriteTimeLabel()
        self.configFavoriteTimeButton()
        self.configResetPasswordButton()
        self.configExitAppButton()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0) //verde
    }
    
    func configSuperView() {
        self.addSubview(self.backgrondOnTop)
        self.backgrondOnTop.addSubview(self.logoAppImageView)
        self.backgrondOnTop.addSubview(self.userImageView)
        self.addSubview(nameLabel)
        self.addSubview(emailLabel)
        self.addSubview(favoriteTimeLabel)
        self.addSubview(favoriteTimeButton)
        self.addSubview(resetPasswordButton)
        self.addSubview(exitAppButton)
    }
    
    @objc private func tappedRedefinePasswordButton() {
        delegate?.actionRedefinePasswordButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configBackgrondOnTop() {
        self.backgrondOnTop.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(160)
        }
    }
    
    func configLogoAppImageView() {
        self.logoAppImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.trailing.equalToSuperview()
            make.height.width.equalTo(100)
        }
    }
    
    func configUserImageView() {
        self.userImageView.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(-50)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(100)
        }
    }
    
    func configNameLabel() {
        self.nameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.userImageView.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().inset(30)
            make.height.equalTo(45)
        }
    }
    
    func configEmailLabel() {
        self.emailLabel.snp.makeConstraints { make in
            make.top.equalTo(self.nameLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    func configFavoriteTimeLabel() {
        self.favoriteTimeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.emailLabel.snp.bottom).offset(10)
            make.leading.equalTo(self.emailLabel.snp.leading)
            make.trailing.equalTo(self.emailLabel.snp.trailing)
            make.height.equalTo(self.emailLabel.snp.height)
        }
    }
    
    func configFavoriteTimeButton() {
        self.favoriteTimeButton.snp.makeConstraints { make in
            make.top.equalTo(self.favoriteTimeLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(80)
            make.trailing.equalToSuperview().inset(80)
            make.height.equalTo(35)
        }
    }
    
    func configResetPasswordButton() {
        self.resetPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(self.favoriteTimeButton.snp.bottom).offset(10)
            make.leading.equalTo(self.favoriteTimeButton.snp.leading)
            make.trailing.equalTo(self.favoriteTimeButton.snp.trailing)
            make.height.equalTo(self.favoriteTimeButton.snp.height)
        }
    }
    
    func configExitAppButton() {
        self.exitAppButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(30)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
}
