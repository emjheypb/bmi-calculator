//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    
    @IBOutlet weak var heightSldr: UISlider!
    @IBOutlet weak var weightSldr: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let height = heightSldr.value
            let weight = weightSldr.value
            let bmi = weight / pow(height, 2)
            
            let vc = segue.destination as! ResultsViewController
            vc.bmiValue = String(format: "%.2f", bmi)
        }
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
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
}

