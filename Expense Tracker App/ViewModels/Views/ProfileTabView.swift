//
//  ProfileView.swift
//  Expense Tracker App
//
//  Created by admin1 on 08.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
//        title = "Profile"
        
}
    
    private func initialize() {
        
//        let imageView: UIImageView {
           let imageHeader = UIImageView(image: #imageLiteral(resourceName: "Rectangle 9.png"))
            //image.backgroundColor = .lightGray
//            image.contentMode = .scaleAspectFill
//            image.layer.cornerRadius = 2
//            image.clipsToBounds = true
           

        view.addSubview(imageHeader)
        imageHeader.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            //make.left.equalToSuperview().inset(0)
            //make.top.equalToSuperview().inset(0)
        }
        
        let imageRings = UIImageView(image: #imageLiteral(resourceName: "Group 6.1"))
        view.addSubview(imageRings)
        imageRings.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.left.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(0)
        }
        
        let buttonBell = UIButton(type: .custom)
        buttonBell.setImage(UIImage(named: "Frame4z"), for: .normal)
        view.addSubview(buttonBell)
        buttonBell.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(78)
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview().inset(350)
        }
        buttonBell.addTarget(self, action: #selector(buttonBellTapped), for: .touchUpInside)
    }

@objc private func buttonBellTapped() {
    print("We want to get a username")
}
    }
