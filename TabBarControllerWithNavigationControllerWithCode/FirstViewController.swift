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
        createImage()
    }
}

extension FirstViewController {
    fileprivate func createViewController() {
        self.navigationItem.title = "First View Controller"
        tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        self.tabFirstBarItem = tabBarItem
        self.view.backgroundColor = .green
    }
    
    fileprivate func createImage() {
        let imageName = "swift.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 256, height: 256)
        imageView.center = self.view.center
        imageView.animationDuration = 5.0
        view.addSubview(imageView)
    }
}
