//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mariah Baysic on 2/10/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiVal = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let titleLbl = UILabel()
        titleLbl.text = bmiVal
        titleLbl.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(titleLbl)
    }
    
}
