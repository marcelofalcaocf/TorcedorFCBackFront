//
//  TeamDetailsScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/09/22.
//

import UIKit

class TeamDetailsScreen: UIView {

    lazy var teamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.layer.cornerRadius = 130
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var teamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.text = "Sport"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSuperView()
        
        configTeamImageView()
        configTeamLabel()
    }
    
    private func configSuperView() {
        addSubview(teamImageView)
        addSubview(teamLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configTeamImageView() {
        teamImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.width.height.equalTo(260)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configTeamLabel() {
        teamLabel.snp.makeConstraints { make in
            make.top.equalTo(self.teamImageView.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
    }
}
