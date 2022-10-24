//
//  GamesScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 27/08/22.
//

import UIKit

class GamesScreen: UIView {

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
    
    lazy var gamesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Jogos:"
        return label
    }()
    
    lazy var daysCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .gray
        collectionView.delaysContentTouches = false
        collectionView.register(GameDaysCollectionViewCell.self, forCellWithReuseIdentifier: GameDaysCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        return collectionView
    }()
    
    lazy var gamesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
        tableView.layer.cornerRadius = 10
        tableView.register(GamesTableViewCell.self, forCellReuseIdentifier: GamesTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configBackgrondOnTop()
        self.configLogoAppImageView()
        self.configGamesLabel()
        self.configDaysCollectionView()
        self.configGamesTableView()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.gamesTableView.delegate = delegate
        self.gamesTableView.dataSource = dataSource
    }
    
    public func configCollectionViewProtocols(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        self.daysCollectionView.delegate = delegate
        self.daysCollectionView.dataSource = dataSource
    }
    
    func configSuperView() {
        self.addSubview(backgrondOnTop)
        self.backgrondOnTop.addSubview(logoAppImageView)
        self.backgrondOnTop.addSubview(gamesLabel)
        self.addSubview(daysCollectionView)
        self.addSubview(gamesTableView)
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
    
    func configGamesLabel() {
        self.gamesLabel.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(-45)
            make.leading.equalToSuperview().offset(10)
            make.height.equalTo(45)
        }
    }
    
    func configDaysCollectionView() {
        self.daysCollectionView.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(90)
        }
    }
    
    func configGamesTableView() {
        self.gamesTableView.snp.makeConstraints { make in
            make.top.equalTo(self.daysCollectionView.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(15)
        }
    }
}
