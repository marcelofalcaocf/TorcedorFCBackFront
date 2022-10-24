//
//  GamesTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 05/09/22.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    static let identifier: String = "GamesTableViewCell"
    
    lazy var gamesView: GamesTableViewCellScreen = {
        let view = GamesTableViewCellScreen()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        self.configChampionshipsView()
        
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.gamesView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configChampionshipsView() {
        self.gamesView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
