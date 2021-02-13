//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mariah Baysic on 2/12/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getValue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Invalid Weight / Height"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
//        String(format: "%.2f", weight / pow(height, 2))
        let bmiValue = weight / pow(height, 2)
        
        if height == 0 || weight == 0 {
            bmi = nil
        }
        else if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Dang Patpat!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Good on ya, mate!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Fat Arse!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
}
