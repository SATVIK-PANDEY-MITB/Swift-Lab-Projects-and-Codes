//
//  ViewController.swift
//  Temp_convertor
//
//  Created by MITBLR-CSE on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var submit: UIButton!
    
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitted(_ sender: Any) {
        
        let celsius = Double(input.text!)!
        let fahrenheit = (celsius * 9.0 / 5.0) + 32.0
        result.text = String(fahrenheit)
        
    }
    

}

