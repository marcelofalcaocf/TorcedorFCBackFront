//
//  GameDaysScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 16/09/22.
//

import UIKit

class GameDaysScreen: UIView {

    lazy var dayGame: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Jogos Do Dia"
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        
        configDayGame()
    }
    
    func configSuperView() {
       addSubview(dayGame)
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDayGame() {
        dayGame.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(2)
            make.trailing.equalToSuperview().inset(2)
        }
    }
}
