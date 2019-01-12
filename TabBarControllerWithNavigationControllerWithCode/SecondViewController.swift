//
//  SecondViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/9/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let cityArray = ["Kyiv", "Dnipro", "Lviv", "Kharkov", "Odessa"]
    var tabSecondBarItem = UITabBarItem()
    let textLabel = UILabel()
    let pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSecondViewController()
        createPickerView()
        createTextLabel()
    }
}

extension SecondViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    fileprivate func createSecondViewController() {
        // ViewController
        self.navigationItem.title = "Second View Controller"
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .yellow
    }
    
    fileprivate func createPickerView() {
        // PickerView
        self.pickerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pickerView)
        self.pickerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.pickerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.pickerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    fileprivate func createTextLabel() {
        // TextLabel
        let labelFrame = CGRect(x: 0, y: 0, width: 200, height: 50)
        self.textLabel.frame = labelFrame
        self.textLabel.numberOfLines = 0
        self.textLabel.lineBreakMode = .byWordWrapping
        self.textLabel.text = "UIPickerVIew"
        self.textLabel.adjustsFontSizeToFitWidth = true
        self.textLabel.textAlignment = .center
        self.textLabel.sizeToFit()
        self.textLabel.textColor = .black
        self.textLabel.center = self.view.center
        self.textLabel.adjustsFontSizeToFitWidth = true
        self.textLabel.textColor = .black
        self.view.addSubview(textLabel)
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.cityArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.cityArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.textLabel.text = self.cityArray[row]
    }
}
