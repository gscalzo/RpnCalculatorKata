//
//  RpnCalculator.swift
//  RpnCalculatorKata
//
//  Created by Giordano Scalzo on 10/06/2014.
//  Copyright (c) 2014 XpItLondon. All rights reserved.
//

import Foundation

enum Key : String {
    case One = "1" //...
    case Enter = "enter"
    case Plus = "+"
    case Minus = "-"
}

protocol RpnCalculator {
    var display : String[] { get }
    func press(key: Key)
}

class MyTrivialRpnCalculator: RpnCalculator {
    var display : String[] {
        return []
    }
    func press(key: Key) {}
}
