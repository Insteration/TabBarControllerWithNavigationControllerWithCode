//
//  MainViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/9/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var tabFirstBarItem = UITabBarItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        createViewController()
    }
}

extension FirstViewController {
    fileprivate func createViewController() {
        self.navigationItem.title = "First View Controller"
        tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        self.tabFirstBarItem = tabBarItem
        self.view.backgroundColor = .green
    }
}
