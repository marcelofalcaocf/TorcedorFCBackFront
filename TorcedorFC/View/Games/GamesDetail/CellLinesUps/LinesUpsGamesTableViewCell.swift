//
//  LinesUpsGamesTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 13/09/22.
//

import UIKit

class LinesUpsGamesTableViewCell: UITableViewCell {

    static let identifier: String = "LinesUpsGamesTableViewCell"
    
    lazy var detailStatisticView: LinesUpsGameScreen = {
        let view = LinesUpsGameScreen()
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        
        configDetailChampsView()
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.detailStatisticView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDetailChampsView() {
        self.detailStatisticView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
