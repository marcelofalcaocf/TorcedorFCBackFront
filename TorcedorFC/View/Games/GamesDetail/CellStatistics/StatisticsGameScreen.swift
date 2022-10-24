//
//  StatisticsGameScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 12/09/22.
//

import UIKit

class StatisticsGameScreen: UIView {
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Detalhe"
        return label
    }()
    
    lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Time A"
        return label
    }()
    
    lazy var visitingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Time B"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        
        configDetailLabel()
        configHomeLabel()
        configVisitingLabel()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        addSubview(detailLabel)
        addSubview(homeLabel)
        addSubview(visitingLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDetailLabel() {
        detailLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configHomeLabel() {
        homeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.leading.equalToSuperview().offset(5)
        }
    }
    
    private func configVisitingLabel() {
        visitingLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.trailing.equalToSuperview().inset(5)
            
        }
    }
    
}
