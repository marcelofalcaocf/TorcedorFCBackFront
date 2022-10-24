//
//  LinesUpsGameScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 13/09/22.
//

import UIKit

class LinesUpsGameScreen: UIView {
    
    lazy var teamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.layer.cornerRadius = 11
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var teamlLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Flamengo"
        return label
    }()
    
    lazy var schemelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "4-4-2"
        return label
    }()
    
    lazy var tacticalSchemeImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "esquema442")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var holdersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Titulares:"
        return label
    }()
    
    lazy var coachLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Treinador: Rogerio Ceni"
        return label
    }()
    
    lazy var linesUpLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Santos, Matheuzinho, Fabricio Bruno, Pablo e Ayrton Lucas, Diego, Vidal e Victor Hugo, Everton Cebolinha, Marinho, Lázaro"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        
        configTeamImageView()
        configTeamlLabel()
        configSchemelLabel()
        configTacticalSchemeImageView()
        configHoldersLabel()
        configCoachLabel()
        configLinesUpLabel()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        addSubview(teamImageView)
        addSubview(teamlLabel)
        addSubview(schemelLabel)
        addSubview(tacticalSchemeImageView)
        addSubview(holdersLabel)
        addSubview(coachLabel)
        addSubview(linesUpLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configTeamImageView() {
        teamImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(2)
            make.leading.equalToSuperview().offset(2)
            make.height.width.equalTo(22)
           // make.centerX.equalToSuperview()
        }
    }
    
    private func configTeamlLabel() {
        teamlLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(4)
            make.leading.equalTo(self.teamImageView.snp.trailing).offset(5)
        }
    }
    
    private func configSchemelLabel() {
        schemelLabel.snp.makeConstraints { make in
            make.top.equalTo(self.teamlLabel.snp.top)
            make.trailing.equalToSuperview().inset(2)
        }
    }
    
    private func configTacticalSchemeImageView() {
        tacticalSchemeImageView.snp.makeConstraints { make in
            make.top.equalTo(self.teamlLabel.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(240)
        }
    }
    
    private func configHoldersLabel() {
        holdersLabel.snp.makeConstraints { make in
            make.top.equalTo(self.tacticalSchemeImageView.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(2)
        }
    }
    
    private func configCoachLabel() {
        coachLabel.snp.makeConstraints { make in
            make.top.equalTo(self.holdersLabel.snp.top)
            make.trailing.equalToSuperview().inset(2)
        }
    }
    
    private func configLinesUpLabel() {
        linesUpLabel.snp.makeConstraints { make in
            make.top.equalTo(self.holdersLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(2)
            make.trailing.equalToSuperview().inset(2)
        }
    }
}
