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
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSldrChanged(_ sender: UISlider) {
        let height = "\(String(format: "%.2f", sender.value))m"
        heightLbl.text = height
    }
    
    @IBAction func weightSldrChanged(_ sender: UISlider) {
        let weight = "\(String(format: "%.2f", sender.value))Kg"
        weightLbl.text = weight
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSldr.value, weight: weightSldr.value)
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let vc = segue.destination as! ResultsViewController
            vc.result = calculatorBrain.getValue()
            vc.advice = calculatorBrain.getAdvice()
            vc.color = calculatorBrain.getColor()
        }
    }
    
}

