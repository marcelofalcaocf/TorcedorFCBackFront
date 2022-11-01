//
//  PhaseDetailCellScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/10/22.
//

import UIKit

class PhaseDetailCellScreen: UIView {

    lazy var dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.text = "Dia 00/00/0000 - 10:00"
        return label
    }()
    
    lazy var homeTeamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        // image.backgroundColor = .gray
        // image.layer.cornerRadius = 11
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var scoreboard: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.text = "3 x 1"
        return label
    }()
    
    lazy var visitorTeamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        // image.backgroundColor = .gray
        // image.layer.cornerRadius = 11
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        
        configDayLabel()
        configHomeTeamImageView()
        configScoreboard()
        configVisitorTeamImageView()
    }
    
    private func configBackGround() {
        backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
       // self.backgroundColor = UIColor(red: 40/255, green: 57/255, blue: 81/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        addSubview(dayLabel)
        addSubview(homeTeamImageView)
        addSubview(scoreboard)
        addSubview(visitorTeamImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDayLabel() {
        dayLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configHomeTeamImageView() {
        homeTeamImageView.snp.makeConstraints { make in
            make.top.equalTo(self.dayLabel.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(10)
            make.height.width.equalTo(115)
        }
    }
    
    private func configScoreboard() {
        scoreboard.snp.makeConstraints { make in
            make.top.equalTo(self.dayLabel.snp.bottom).offset(80)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configVisitorTeamImageView() {
        visitorTeamImageView.snp.makeConstraints { make in
            make.top.equalTo(self.dayLabel.snp.bottom).offset(25)
            make.trailing.equalToSuperview().inset(10)
            make.height.width.equalTo(115)
        }
    }
}
