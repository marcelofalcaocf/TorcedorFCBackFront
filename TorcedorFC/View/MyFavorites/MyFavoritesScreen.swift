//
//  MyFavoritesScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 28/08/22.
//

import UIKit

class MyFavoritesScreen: UIView {

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
    
    lazy var favoritesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Meus times favoritos:"
        return label
    }()
    
    lazy var timesCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .gray
        collectionView.delaysContentTouches = false
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        return collectionView
    }()
    
    lazy var changeFavoritesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Alterar Favorito", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.white , for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .gray
        // button.addTarget(self, action: #selector(self.tappedForgotPasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var gamesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .gray
        tableView.layer.cornerRadius = 10
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSubView()
        
        self.configBackgrondOnTop()
        self.configLogoAppImageView()
        self.configFavoritesLabel()
        self.configTimesCollectionView()
        self.configChangeFavoritesButton()
        self.configGamesTableView()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    func configSubView() {
        self.addSubview(backgrondOnTop)
        self.backgrondOnTop.addSubview(logoAppImageView)
        self.backgrondOnTop.addSubview(favoritesLabel)
        self.addSubview(self.timesCollectionView)
        self.addSubview(self.changeFavoritesButton)
        self.addSubview(self.gamesTableView)

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
    
    func configFavoritesLabel() {
        self.favoritesLabel.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(-45)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalTo(self.logoAppImageView.snp.leading).inset(20)
        }
    }
    
    func configTimesCollectionView() {
        self.timesCollectionView.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(90)
        }
    }
    
    
    func configChangeFavoritesButton() {
        self.changeFavoritesButton.snp.makeConstraints { make in
            make.top.equalTo(self.timesCollectionView.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().inset(40)
            make.height.equalTo(45)
        }
    }
    
    func configGamesTableView() {
        self.gamesTableView.snp.makeConstraints { make in
            make.top.equalTo(self.changeFavoritesButton.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().inset(5)
        }
    }
}
