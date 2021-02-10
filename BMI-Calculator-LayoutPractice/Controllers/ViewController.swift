//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    
    @IBOutlet weak var heightSldr: UISlider!
    @IBOutlet weak var weightSldr: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSldrChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLbl.text = "\(height)m"
    }
    
    @IBAction func weightSldrChanged(_ sender: UISlider) {
        let weight = round(sender.value * 100) / 100
        weightLbl.text = "\(weight)Kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSldr.value
        let weight = weightSldr.value
        let bmi = weight / pow(height, 2)
        
        print(String(format: "%.2f", bmi))
    }
    
}

