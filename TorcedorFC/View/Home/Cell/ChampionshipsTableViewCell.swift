//
//  ChampionshipsTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit
import Kingfisher

class ChampionshipsTableViewCell: UITableViewCell {

    static let identifier: String = "ChampionshipsTableViewCell"
    
    lazy var championshipsView: ChampionshipsScreen = {
        let view = ChampionshipsScreen()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        
        self.configChampionshipsView()
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.championshipsView)
    }
    
    public func setUpCell(data: ListaDeCampeonato) {
        guard let url = URL(string: data.logo) else { return }
        self.championshipsView.champImageView.kf.setImage(with: url)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configChampionshipsView() {
        self.championshipsView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
