//
//  ThirdNextViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/12/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class ThirdNextViewController: UIViewController {
    
    let textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createThirdNextViewController()
        createTextLabel()
        
    }
}

extension ThirdNextViewController {
    fileprivate func createThirdNextViewController() {
        self.navigationItem.title = "Third Next View Controller"
        self.view.backgroundColor = .red
    }
    
    fileprivate func createTextLabel() {
        // Text label
        self.textLabel.text = "Hi! You on next ViewController"
        self.textLabel.adjustsFontSizeToFitWidth = true
        self.textLabel.sizeToFit()
        self.textLabel.textColor = .black
        self.textLabel.center = self.view.center
        self.view.addSubview(textLabel)
    }
}
