//
//  PhaseDetailTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/10/22.
//

import UIKit

class PhaseDetailTableViewCell: UITableViewCell {

    static let identifier: String = "PhaseDetailTableViewCell"
    
    lazy var phaseDetailCellScreenaView: PhaseDetailCellScreen = {
        let view = PhaseDetailCellScreen()
        view.layer.cornerRadius = 7.5
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configSuperView()
        configPhaseDetailCellScreenaView()
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.phaseDetailCellScreenaView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configPhaseDetailCellScreenaView() {
        self.phaseDetailCellScreenaView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
}
