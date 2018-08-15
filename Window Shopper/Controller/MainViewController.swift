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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButtom = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80))
        calculateButtom.backgroundColor = #colorLiteral(red: 0.9692655457, green: 0.5622963727, blue: 0.01247087664, alpha: 1)
        
    }


}

