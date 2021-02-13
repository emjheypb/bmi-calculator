//
//  ResultsViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mariah Baysic on 2/12/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    var result: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLbl.text = result
        adviceLbl.text = advice
        backgroundView.backgroundColor = color
    }
    
    @IBAction func recalculate(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
