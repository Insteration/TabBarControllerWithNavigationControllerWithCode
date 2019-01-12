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
        self.navigationItem.title = "Second View Controller"
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .yellow
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
