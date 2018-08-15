//
//  Wage.swift
//  Window Shopper
//
//  Created by DokeR on 16.08.2018.
//  Copyright © 2018 DokeR. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
