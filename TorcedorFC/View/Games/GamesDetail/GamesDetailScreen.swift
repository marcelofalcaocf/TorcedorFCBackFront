//
//  GamesDetailScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 02/09/22.
//

import UIKit

protocol GameDetailScreenProtocol: AnyObject {
    func actionBackButton()
    func chooseTableView()
}

class GamesDetailScreen: UIView {
    
    private weak var delegate: GameDetailScreenProtocol?
    
    func delegate(delegate: GameDetailScreenProtocol?) {
        self.delegate = delegate
    }
    
    private let items = ["Estatísticas", "Escalações"]

    lazy var backgrondOnTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
        return view
    }()
    
    lazy var backAppButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoVoltar"), for: .normal)
        button.addTarget(self, action: #selector(self.tappeBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var homeTeamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
//        image.backgroundColor = .gray
        image.layer.cornerRadius = 30
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var homeTeamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "São Paulo"
        return label
    }()
    
    lazy var visitingTeamImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
//        image.backgroundColor = .gray
        image.layer.cornerRadius = 30
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var visitingTeamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "Flamengo"
        return label
    }()
    
    lazy var scoreboardLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "2 x 0"
        return label
    }()
    
    lazy var segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: items)
        control.selectedSegmentIndex = 0
        control.layer.cornerRadius = 9
        control.addTarget(self, action: #selector(self.chooseTableView), for: .valueChanged)
        return control
    }()
    
    lazy var statisticTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .gray
        tableView.layer.cornerRadius = 10
        tableView.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        tableView.register(StatisticGameTableViewCell.self, forCellReuseIdentifier: StatisticGameTableViewCell.identifier)
        tableView.register(LinesUpsGamesTableViewCell.self, forCellReuseIdentifier: LinesUpsGamesTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configBackgrondOnTop()
        self.configBackAppButton()
        self.configHomeTeamImageView()
        self.configHomeTeamLabel()
        self.configVisitingTeamImageView()
        self.configVisitingTeamLabel()
        self.configScoreboardLabel()
        self.configSegmentedControl()
        self.configGamesTableView()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    func configSuperView() {
        self.addSubview(backgrondOnTop)
        self.backgrondOnTop.addSubview(backAppButton)
        self.backgrondOnTop.addSubview(homeTeamImageView)
        self.backgrondOnTop.addSubview(homeTeamLabel)
        self.backgrondOnTop.addSubview(visitingTeamImageView)
        self.backgrondOnTop.addSubview(visitingTeamLabel)
        self.backgrondOnTop.addSubview(scoreboardLabel)
        self.addSubview(segmentedControl)
        self.addSubview(statisticTableView)

    }
    
    public func configTableViewProtocols(dataSource: UITableViewDataSource, delegate: UITableViewDelegate) {
        self.statisticTableView.dataSource = dataSource
        self.statisticTableView.delegate = delegate
    }
    
    @objc private func chooseTableView() {
        self.delegate?.chooseTableView()
    }
    
    @objc private func tappeBackButton() {
        self.delegate?.actionBackButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackgrondOnTop() {
        self.backgrondOnTop.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(150)
        }
    }
    
    private func configBackAppButton() {
        self.backAppButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.leading.equalToSuperview().offset(10)
            make.height.width.equalTo(20)
        }
    }
    
    private func configHomeTeamImageView() {
        self.homeTeamImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.leading.equalToSuperview().offset(40)
            make.height.width.equalTo(60)
        }
    }
    
    private func configHomeTeamLabel() {
        self.homeTeamLabel.snp.makeConstraints { make in
            make.top.equalTo(self.homeTeamImageView.snp.bottom).offset(0.5)
            make.leading.equalToSuperview().offset(40)
            make.height.equalTo(20)
        }
    }
    
    private func configVisitingTeamImageView() {
        self.visitingTeamImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.trailing.equalToSuperview().inset(40)
            make.height.width.equalTo(60)
        }
    }
    
    private func configVisitingTeamLabel() {
        self.visitingTeamLabel.snp.makeConstraints { make in
            make.top.equalTo(self.visitingTeamImageView.snp.bottom).offset(0.5)
            make.trailing.equalToSuperview().inset(40)
            make.height.equalTo(20)
        }
    }
    
    private func configScoreboardLabel() {
        self.scoreboardLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(90)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configSegmentedControl() {
        self.segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(self.backgrondOnTop.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    private func configGamesTableView() {
        self.statisticTableView.snp.makeConstraints { make in
            make.top.equalTo(self.segmentedControl.snp.bottom).offset(10)
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
