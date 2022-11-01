//
//  HomeScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class HomeScreen: UIView {

    lazy var backgrondOnTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
        return view
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoLogin")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var welcomeNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Bem vindo!"
        return label
    }()
    
    lazy var campLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Campeonatos:"
        return label
    }()
    
    lazy var informationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 158/255, green: 158/255, blue: 158/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Selecione para saber mais:"
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.cornerRadius = 10
        tableView.register(ChampionshipsTableViewCell.self, forCellReuseIdentifier: ChampionshipsTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configBackgrondOnTop()
        self.configWelcomeNameLabel()
        self.configLogoAppImageView()
        self.configCampLabel()
        self.configInformationLabel()
        self.configTableView()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    private func configSuperView() {
        self.addSubview(self.backgrondOnTop)
        self.backgrondOnTop.addSubview(self.welcomeNameLabel)
        self.backgrondOnTop.addSubview(self.logoAppImageView)
        self.backgrondOnTop.addSubview(self.campLabel)
        self.addSubview(self.informationLabel)
        self.addSubview(self.tableView)
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
    
    func configWelcomeNameLabel() {
        self.welcomeNameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(15)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(45)
        }
    }
    
    func configLogoAppImageView() {
        self.logoAppImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.trailing.equalToSuperview()
            make.height.width.equalTo(100)
        }
    }
    
    func configCampLabel() {
        self.campLabel.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(-45)
            make.leading.equalToSuperview().offset(10)
        }
    }
    
    func configInformationLabel() {
        self.informationLabel.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
        }
    }
    
    func configTableView() {
        self.tableView.snp.makeConstraints { make in
            make.top.equalTo(self.informationLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().inset(20)
        }
    }
}
