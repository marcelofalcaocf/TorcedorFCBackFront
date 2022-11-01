//
//  DetailChampTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 02/09/22.
//

import UIKit

class DetailChampsTableViewCell: UITableViewCell {

    static let identifier: String = "DetailChampsTableViewCell"
    
    lazy var detailChampsView: DetailChampsScreen = {
        let view = DetailChampsScreen()
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        
        configDetailChampsView()
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.detailChampsView)
    }
    
    public func setUpCell(data: LinhaTabelaCampeonatoBrasileiro) {
        guard let url = URL(string: data.time.escudo) else { return }
        
        self.detailChampsView.teamImageView.kf.setImage(with: url)
        detailChampsView.teamLabel.text = data.time.nomePopular
        detailChampsView.positionLabel.text = String(data.posicao)
        detailChampsView.spotsLabel.text = String(data.pontos)
        detailChampsView.numberOfGamesLabel.text = String(data.jogos)
        detailChampsView.victoriesLabel.text = String(data.vitorias)
        detailChampsView.drawsLabel.text = String(data.empates)
        detailChampsView.defeatsLabel.text = String(data.derrotas)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDetailChampsView() {
        self.detailChampsView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
