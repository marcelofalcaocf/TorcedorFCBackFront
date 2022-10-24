//
//  TeamDetailsTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/09/22.
//

import UIKit

class TeamDetailsTableViewCell: UITableViewCell {

    static let identifier: String = "TeamDetailsTableViewCell"
    
    lazy var detailsView: TeamDetailsScreen = {
        let view = TeamDetailsScreen()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configBackGround()
        
        self.configSuperView()
        self.teamDetailsView()
        
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.detailsView)
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 40/255, green: 57/255, blue: 81/255, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func teamDetailsView() {
        self.detailsView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
