//
//  CupPhasesScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 09/09/22.
//

import UIKit

class CupPhasesScreen: UIView {

    lazy var phaseLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.text = "Fase"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        
        configPhaseLabel()
    }
    
    private func configBackGround() {
        backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
       // self.backgroundColor = UIColor(red: 40/255, green: 57/255, blue: 81/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        addSubview(phaseLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configPhaseLabel() {
        phaseLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
        }
    }
}
