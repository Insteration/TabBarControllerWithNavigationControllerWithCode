//
//  SecondViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/9/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var tabSecondBarItem = UITabBarItem()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        createSecondViewController()
        
    }
}

extension SecondViewController {
    
    fileprivate func createSecondViewController() {
        self.navigationItem.title = "Second View Controller"
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .yellow
    }
}
