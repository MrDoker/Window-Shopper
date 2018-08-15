//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by DokeR on 15.08.2018.
//  Copyright © 2018 DokeR. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 27
        let currencylabel = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencylabel.backgroundColor = #colorLiteral(red: 0.8161462518, green: 0.8161462518, blue: 0.8161462518, alpha: 0.7960455908)
        currencylabel.textAlignment = .center
        currencylabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencylabel.layer.cornerRadius = 5.0
        currencylabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: Locale.preferredLanguages[0])

        currencylabel.text = formatter.currencySymbol
        
        addSubview(currencylabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
       customizeView()
    }

    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
