//
//  ViewController.swift
//  BMI_calculator
//
//  Created by MITBLR-CSE on 04/08/25.
//

import UIKit

struct BMI_cal{
    var height:Double
    var weight:Double
    func calculate() -> Double{
        return (Double(weight) / (Double(height) * Double(height)))
    }
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Height: UITextField!
    
    @IBOutlet weak var Weight: UITextField!
    
    @IBOutlet weak var Calculate: UIButton!
    
    @IBOutlet weak var BMI: UITextField!

    @IBOutlet weak var Result: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    @IBAction func BMI_Calculate(_ sender: UIButton) {
        
        var bmi_value:Double = 0.0
        
        if var height_value = Double(Height.text ?? ""),
           let weight_value = Double(Weight.text ?? "")
        {
            height_value = height_value / 100
            bmi_value = BMI_cal(height: height_value, weight: weight_value).calculate()
            BMI.text = String(format: "%.2f", bmi_value)
        }else{
            BMI.text = "Please enter valid values"
        }
        
        switch bmi_value {
        case 0.00...18.5:
            Result.text = "Underweight"
        case 18.5...24.9:
            Result.text = "Normal"
        case 25...29.9:
            Result.text = "Overweight"
        default:
            Result.text = "Obese"
        }
        
    }
}
