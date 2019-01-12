//
//  ThirdViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/9/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let switcher = UISwitch()
    let labelText = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createThirdViewController()
        createSwitch()
        createLabel()
        
        let buttonFrame = CGRect(x: 100, y: 0, width: 10, height: 30)
        self.button.frame = buttonFrame
//        self.button.backgroundColor = .green
        self.button.setTitle("Back", for: .normal)
        self.button.addTarget(self, action: #selector(buttonAction(param:)), for: .touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
//        self.button.addSubview(button)
    }

}

extension ThirdViewController {
    
    fileprivate func createThirdViewController() {
        // Third VC
        self.navigationItem.title = "Third View Controller"
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .mostRecent, tag: 2)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .red
    }
    
    fileprivate func createSwitch() {
        // Switch
        self.switcher.isOn = false
        switcher.addTarget(self, action: #selector(switcherChange(param:)), for: .valueChanged)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: switcher)
    }
    
    fileprivate func createLabel() {
        // Label
        let labelFrame = CGRect(x: 0, y: 0, width: 200, height: 50)
        self.labelText.frame = labelFrame
        self.labelText.numberOfLines = 0
        self.labelText.lineBreakMode = .byWordWrapping
        self.labelText.text = "Switch is tapped ON!"
        self.labelText.adjustsFontSizeToFitWidth = true
        self.labelText.sizeToFit()
        self.labelText.textColor = .black
        self.labelText.center = self.view.center
        self.labelText.isHidden = true
        view.addSubview(labelText)
    }

    
    @objc func switcherChange(param: UISwitch) {
        if param.isOn {
            self.labelText.isHidden = false
        } else {
            self.labelText.isHidden = true
        }
    }
    
    @objc func buttonAction(param: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
