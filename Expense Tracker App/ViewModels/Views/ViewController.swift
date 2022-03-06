//
//  ViewController.swift
//  Expense Tracker App
//
//  Created by admin1 on 06.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                //self.label.text = statusText
            }
        })
    }


}

