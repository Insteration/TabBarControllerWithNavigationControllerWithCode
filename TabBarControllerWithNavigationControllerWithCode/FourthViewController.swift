//
//  ViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/9/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Main View Controller"
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 4)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .green
        
    }


}

