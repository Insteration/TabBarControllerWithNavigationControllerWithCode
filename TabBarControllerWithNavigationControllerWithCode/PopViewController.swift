//
//  LoginViewController.swift
//  TabBarControllerWithNavigationControllerWithCode
//
//  Created by Artem Karmaz on 1/12/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        createButton()
    }
}

extension PopViewController {
    fileprivate func setupViewController() {
        self.view.backgroundColor = .green
    }
    
    fileprivate func createButton() {
        let buttonFrame = CGRect(x: 0, y: 0, width: 200, height: 50)
        self.button.frame = buttonFrame
        self.button.setTitle("POP VC", for: .normal)
        self.button.backgroundColor = .red
        self.button.center = self.view.center
        self.button.addTarget(self, action: #selector(buttonAction(param:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(param: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
