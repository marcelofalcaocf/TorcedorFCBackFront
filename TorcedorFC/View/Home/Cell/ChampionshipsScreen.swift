//
//  ChampionshipsView.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class ChampionshipsScreen: UIView {

    lazy var champImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        
        self.configChampImageView()
    }
    
    func configSuperView() {
        self.addSubview(self.champImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configChampImageView() {
        self.champImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(270)
        }
    }
}
