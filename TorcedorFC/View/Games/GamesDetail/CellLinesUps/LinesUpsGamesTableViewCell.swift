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
    public func setUpCell(data: PartidaCompleta, indexPath: Int) {
        if indexPath == 0 {
            detailStatisticView.teamlLabel.text = data.timeMandante.nomePopular
            detailStatisticView.schemelLabel.text = data.escalacoes.mandante.esquemaTatico
            detailStatisticView.coachLabel.text = data.escalacoes.mandante.tecnico.nomePopular
            guard let url = URL(string: data.timeMandante.escudo) else { return }
            detailStatisticView.teamImageView.kf.setImage(with: url)
            //detailStatisticView.linesUpLabel.text = data.escalacoes.mandante.titulares.lazy.joined(separator:  "-")
            //let string = data.escalacoes.mandante.titulares.lazy.joined()
            
        } else if indexPath == 1 {
            detailStatisticView.teamlLabel.text = data.timeVisitante.nomePopular
            detailStatisticView.schemelLabel.text = data.escalacoes.visitante.esquemaTatico
            detailStatisticView.coachLabel.text = data.escalacoes.mandante.tecnico.nomePopular
            guard let url = URL(string: data.timeVisitante.escudo) else { return }
            detailStatisticView.teamImageView.kf.setImage(with: url)
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
