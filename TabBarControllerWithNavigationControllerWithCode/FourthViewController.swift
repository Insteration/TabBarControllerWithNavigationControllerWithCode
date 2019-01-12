//
//  ViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/9/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    var fourthTabBarItem = UITabBarItem()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewController()
        
        let buttonFrame = CGRect(x: 0, y: 0, width: 200, height: 50)
        self.button.frame = buttonFrame
        self.button.setTitle("PUSH VC", for: .normal)
        self.button.backgroundColor = .red
        self.button.center = self.view.center
        self.button.addTarget(self, action: #selector(buttonAction(param:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
}

extension FourthViewController {
    
    fileprivate func createViewController() {
        self.navigationItem.title = "Fourth View Controller"
        tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 4)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .green
    }
    
    @objc func buttonAction(param: UIButton) {
        self.navigationController?.pushViewController(PopViewController(), animated: true)
    }
}
