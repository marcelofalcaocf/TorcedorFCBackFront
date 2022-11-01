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
    
    public func setUpCell(data: Estatisticas, indexPath: Int) {
        if indexPath == 0 {
            detailStatisticView.detailLabel.text = "Passe de Bola"
            detailStatisticView.homeLabel.text = data.mandante.posseDeBola
            detailStatisticView.visitingLabel.text = data.visitante.posseDeBola
        } else if indexPath == 1 {
            detailStatisticView.detailLabel.text = "Escanteios"
            detailStatisticView.homeLabel.text = String(data.mandante.escanteios)
            detailStatisticView.visitingLabel.text = String(data.visitante.escanteios)
        } else if indexPath == 2 {
            detailStatisticView.detailLabel.text = "Impedimentos"
            detailStatisticView.homeLabel.text = String(data.mandante.impedimentos)
            detailStatisticView.visitingLabel.text = String(data.visitante.impedimentos)
        } else if indexPath == 3 {
            detailStatisticView.detailLabel.text = "Faltas"
            detailStatisticView.homeLabel.text = String(data.mandante.faltas)
            detailStatisticView.visitingLabel.text = String(data.visitante.faltas)
        } else if indexPath == 4 {
            detailStatisticView.detailLabel.text = "Passes"
            detailStatisticView.homeLabel.text = String(data.mandante.passes.total)
            detailStatisticView.visitingLabel.text = String(data.visitante.passes.total)
        } else if indexPath == 5 {
            detailStatisticView.detailLabel.text = "Finalização"
            detailStatisticView.homeLabel.text = String(data.mandante.finalizacao.total)
            detailStatisticView.visitingLabel.text = String(data.visitante.finalizacao.total)
        }
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
