//
//  TCScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 29/08/22.
//

import UIKit
import DropDown

    protocol TCScreenProtocol: AnyObject {
        func actionChoiceSearchBar()
}

class TCScreen: UIView {
    
    private weak var delegate: TCScreenProtocol?
    
    func delegate(delegate: TCScreenProtocol?) {
        self.delegate = delegate
    }

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
    
    lazy var tcLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Características:"
        return label
    }()
    
    lazy var choiceSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.autocorrectionType = .no
        searchBar.backgroundColor = .gray
        // textField.borderStyle = .roundedRect
        searchBar.placeholder = "Escreva seu time"
        searchBar.layer.cornerRadius = 10
        searchBar.keyboardType = .default
        searchBar.placeholder = "Digite o time"
        searchBar.searchTextField.textColor = UIColor(red: 40/255, green: 57/255, blue: 81/255, alpha: 1.0)
        // searchBar.textColor = UIColor(red: 40/255, green: 57/255, blue: 81/255, alpha: 1.0)
        return searchBar
    }()
    
    lazy var timesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(red: 40/255, green: 57/255, blue: 81/255, alpha: 1.0)
        tableView.layer.cornerRadius = 10
        tableView.register(TeamDetailsTableViewCell.self, forCellReuseIdentifier: TeamDetailsTableViewCell.identifier)
        return tableView
    }()
    
//    lazy var chooseTimeDropDown: DropDown = {
//        let DP = DropDown()
//        DP.dataSource = ["Sport", "Nautico", "Santa Cruz"]
//        DP.backgroundColor = .gray
//        return DP
//    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configBackgrondOnTop()
        self.configLogoAppImageView()
        self.configTCLabel()
        self.configChoiceSearchBar()
        self.configTimesTableView()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    func configSuperView() {
        self.addSubview(backgrondOnTop)
        self.backgrondOnTop.addSubview(logoAppImageView)
        self.backgrondOnTop.addSubview(tcLabel)
        self.addSubview(choiceSearchBar)
        self.addSubview(timesTableView)
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.timesTableView.delegate = delegate
        self.timesTableView.dataSource = dataSource
    }
    
    @objc private func tappedChoiceSearchBar() {
        self.delegate?.actionChoiceSearchBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configBackgrondOnTop() {
        self.backgrondOnTop.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(150)
        }
    }
    
    func configLogoAppImageView() {
        self.logoAppImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.trailing.equalToSuperview()
            make.height.width.equalTo(100)
        }
    }
    
    func configTCLabel() {
        self.tcLabel.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(-45)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalTo(self.logoAppImageView.snp.leading).inset(20)
        }
    }
    
    func configChoiceSearchBar() {
        self.choiceSearchBar.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(45)
        }
    }
    
    func configTimesTableView() {
        self.timesTableView.snp.makeConstraints { make in
            make.top.equalTo(self.choiceSearchBar.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
