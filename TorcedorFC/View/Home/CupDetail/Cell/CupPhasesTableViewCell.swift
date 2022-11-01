//
//  CupPhasesTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 09/09/22.
//

import UIKit

class CupPhasesTableViewCell: UITableViewCell {

    static let identifier: String = "CupPhasesTableViewCell"

    lazy var detailCupPhasesView: CupPhasesScreen = {
        let view = CupPhasesScreen()
        view.layer.cornerRadius = 7.5
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        
        configDetailCupPhasesView()
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.detailCupPhasesView)
    }
    
    public func setUpCell(data: FaseBase) {
        detailCupPhasesView.phaseLabel.text = data.nome
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDetailCupPhasesView() {
        self.detailCupPhasesView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
}
