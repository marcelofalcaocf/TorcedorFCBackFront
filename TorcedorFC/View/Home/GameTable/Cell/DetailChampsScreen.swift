//
//  DetailChampsScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 02/09/22.
//

import UIKit

class DetailChampsScreen: UIView {
    
    lazy var positionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "1"
        return label
    }()
    
    lazy var teamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.layer.cornerRadius = 11
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var teamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Palmeiras"
        return label
    }()
    
    lazy var spotsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "47"
        return label
    }()
    
    lazy var numberOfGamesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "22"
        return label
    }()
    
    lazy var victoriesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "12"
        return label
    }()
    
    lazy var drawsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "6"
        return label
    }()
    
    lazy var defeatsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "2"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSuperView()
        configBackGround()
        
        configPositionLabel()
        configTeamImageView()
        configTeamLabel()
        configDefeatsLabel()
        configDrawsLabel()
        configVictoriesLabel()
        configNumberOfGamesLabel()
        configSpotsLabel()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        addSubview(positionLabel)
        addSubview(teamImageView)
        addSubview(teamLabel)
        addSubview(defeatsLabel)
        addSubview(drawsLabel)
        addSubview(victoriesLabel)
        addSubview(numberOfGamesLabel)
        addSubview(spotsLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configPositionLabel() {
        positionLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(7)
            make.leading.equalToSuperview().offset(5)
        }
    }
    
    private func configTeamImageView() {
        teamImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.leading.equalTo(self.positionLabel.snp.trailing).offset(5)
            make.height.width.equalTo(22)
        }
    }
    
    private func configTeamLabel() {
        teamLabel.snp.makeConstraints { make in
            make.top.equalTo(self.positionLabel.snp.top)
            make.leading.equalTo(self.teamImageView.snp.trailing).offset(10)
        }
    }
    
    private func configDefeatsLabel() {
        defeatsLabel.snp.makeConstraints { make in
            make.top.equalTo(self.positionLabel.snp.top)
            make.trailing.equalToSuperview().inset(10)
        }
    }
    
    private func configDrawsLabel() {
        drawsLabel.snp.makeConstraints { make in
            make.top.equalTo(self.positionLabel.snp.top)
            make.trailing.equalTo(self.defeatsLabel.snp.trailing).inset(30)
        }
    }

    private func configVictoriesLabel() {
        victoriesLabel.snp.makeConstraints { make in
            make.top.equalTo(self.positionLabel.snp.top)
            make.trailing.equalTo(self.drawsLabel.snp.trailing).inset(30)
        }
    }

    private func configNumberOfGamesLabel() {
        numberOfGamesLabel.snp.makeConstraints { make in
            make.top.equalTo(self.positionLabel.snp.top)
            make.trailing.equalTo(self.victoriesLabel.snp.trailing).inset(30)
        }
    }

    private func configSpotsLabel() {
        spotsLabel.snp.makeConstraints { make in
            make.top.equalTo(self.positionLabel.snp.top)
            make.trailing.equalTo(self.numberOfGamesLabel.snp.trailing).inset(30)
        }
    }
}

