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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewController()
    }

}

extension FourthViewController {
    
    fileprivate func createViewController() {
        self.navigationItem.title = "Fourth View Controller"
        tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 4)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .green
    }
}
