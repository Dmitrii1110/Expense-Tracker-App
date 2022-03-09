//
//  ViewController.swift
//  Expense Tracker App
//
//  Created by admin1 on 06.03.2022.
//

import UIKit

class HomepageTabView: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
//    private let button: UIButton = {
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
//        button.setTitle("Log In", for: .normal)
//        button.backgroundColor = .white
//        button.setTitleColor(.black, for: .normal)
//        return button
//    }()
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
//        view.addSubview(button)
//        button.addTarget(self, action: #selector(didTapButton),
//                         for: .touchUpInside)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func didTapButton(){
        //create and present tab bar controller
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: HomepageViewController())
        let vc2 = UINavigationController(rootViewController: StatisticViewController())
        let vc3 = UINavigationController(rootViewController: WalletViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        
//        vc1.title = "Homepage"
//        vc2.title = "Statistic"
//        vc3.title = "Wallet"
//        vc4.title = "Profile"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4], animated: false)

        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["homepage2", "statistic2", "wallet2", "profile2"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
    }
    
    class HomepageViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
//            title = "Homepage"
            
    }
    }
    

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        button.center = view.center
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                //self.label.text = statusText
            }
        })
    }

    
}

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MyLabel: UIImageView!
    static let id = "MyTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension HomepageTabView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = (tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.id, for: indexPath) as? MyTableViewCell) else {
            fatalError()
        }
        
        return cell
    }
}

