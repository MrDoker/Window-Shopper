//
//  ViewController.swift
//  Window Shopper
//
//  Created by DokeR on 15.08.2018.
//  Copyright © 2018 DokeR. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButtom = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButtom.backgroundColor = #colorLiteral(red: 0.9692655457, green: 0.5622963727, blue: 0.01247087664, alpha: 1)
        calculateButtom.setTitle("Calculate", for: .normal)
        calculateButtom.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButtom.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateButtom
        priceTextField.inputAccessoryView = calculateButtom
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }

    @objc func calculate() {
        if let wageString = wageTextField.text, let priceString = priceTextField.text {
            let numberFormatter = NumberFormatter()
            numberFormatter.decimalSeparator = ","
            
            if let wage = numberFormatter.number(from: wageString), let price = numberFormatter.number(from: priceString) {
                //TODO: Check Zero
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: Double(truncating: wage), andPrice: Double(truncating: price)))"
            } else {
                //TODO: Saying user about wrong input
            }
            
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
    
}

