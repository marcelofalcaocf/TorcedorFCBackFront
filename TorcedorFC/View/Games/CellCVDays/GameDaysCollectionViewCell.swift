//
//  GameDaysCollectionViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 16/09/22.
//

import UIKit

class GameDaysCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "GameDaysCollectionViewCell"
    
    let gameDaysScreen: GameDaysScreen = GameDaysScreen()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        
        configDetailChampsView()
    }
    
    func configSuperView() {
        gameDaysScreen.layer.cornerRadius = 5
//        gameDaysScreen.layer.borderColor = UIColor.darkGray.cgColor
        gameDaysScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(gameDaysScreen)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDetailChampsView() {
        self.gameDaysScreen.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
//    }
}
