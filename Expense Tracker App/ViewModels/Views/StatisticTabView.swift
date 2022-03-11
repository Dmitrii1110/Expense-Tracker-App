//
//  StatisticView.swift
//  Expense Tracker App
//
//  Created by admin1 on 07.03.2022.
//

import UIKit
import SnapKit

class StatisticViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
//        title = "Statistic"
    }
        
        private func initialize() {
            view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
            
            let label = UILabel()
            label.text = "✋ Welcome!"
            label.font = UIFont.systemFont(ofSize: 20)
            view.addSubview(label)
            label.snp.makeConstraints { make in
                make.left.equalToSuperview().inset(50)
                make.top.equalToSuperview().inset(150)
            }
            
            let extraLabel = UILabel()
            extraLabel.text = "Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text v Extra text Extra text Extra text Extra text"
            extraLabel.numberOfLines = 0
            view.addSubview(extraLabel)
            extraLabel.snp.makeConstraints { make in
                make.left.right.equalToSuperview().inset(50)
                make.top.equalTo(label).inset(50)
            }
            
            let button = UIButton(type: .system)
            button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 20
            button.setTitle("Get your username ->", for: .normal)
            view.addSubview(button)
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.width.equalTo(250)
                make.bottom.equalToSuperview().inset(150)
                make.height.equalTo(40)
            }
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
    
    @objc private func buttonTapped() {
        print("We want to get a username")
    }
}
