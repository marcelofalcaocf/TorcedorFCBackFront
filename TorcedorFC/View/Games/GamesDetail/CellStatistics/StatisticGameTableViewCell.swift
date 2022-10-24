//
//  StatisticGameTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 12/09/22.
//

import UIKit

class StatisticGameTableViewCell: UITableViewCell {
    
    static let identifier: String = "StatisticGameTableViewCell"
    
    lazy var detailStatisticView: StatisticsGameScreen = {
        let view = StatisticsGameScreen()
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
