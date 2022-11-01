//
//  GamesTableViewCellScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 05/09/22.
//

import UIKit

class GamesTableViewCellScreen: UIView {
    
    lazy var nameChampsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Campeonato Brasileiro:"
        return label
    }()
    
    lazy var homeTeamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.layer.cornerRadius = 50
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var visitingTeamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.layer.cornerRadius = 50
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var versusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.text = "X"
        return label
    }()
    
    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "Status: Finalizado"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperview()
        
        self.configNameChampsLabel()
        self.configHomeTeamImageView()
        self.configVisitingTeamImageView()
        self.configVersusLabel()
        self.configStatusLabel()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0) //verde
    }
    
    private func configSuperview() {
        self.addSubview(self.nameChampsLabel)
        self.addSubview(self.homeTeamImageView)
        self.addSubview(self.visitingTeamImageView)
        self.addSubview(self.versusLabel)
        self.addSubview(self.statusLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configNameChampsLabel() {
        self.nameChampsLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(5)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configHomeTeamImageView() {
        self.homeTeamImageView.snp.makeConstraints { make in
            make.top.equalTo(self.nameChampsLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
            make.height.width.equalTo(100)
        }
    }
    
    private func configVisitingTeamImageView() {
        self.visitingTeamImageView.snp.makeConstraints { make in
            make.top.equalTo(self.nameChampsLabel.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
            make.height.width.equalTo(100)
        }
    }
    
    private func configVersusLabel() {
        self.versusLabel.snp.makeConstraints { make in
            make.top.equalTo(self.nameChampsLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configStatusLabel() {
        self.statusLabel.snp.makeConstraints { make in
            make.top.equalTo(self.visitingTeamImageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
}
