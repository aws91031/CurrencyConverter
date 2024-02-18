//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by user250993 on 2/16/24.
//

import Foundation

struct ConverterLogic {
    
    var eurSwitch = true
    var jpySwitch = true
    var gbpSwitch = true
    var cnySwitch = true
    
    mutating func setEURSwitch(_ switchValue: Bool) {
        if switchValue {
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }
    
    mutating func setJPYSwitch(_ switchValue: Bool) {
        if switchValue {
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    
    mutating func setGBPSwitch(_ switchValue: Bool) {
        if switchValue {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    
    mutating func setCNYSwitch(_ switchValue: Bool) {
        if switchValue {
            cnySwitch = true
        } else {
            cnySwitch = false
        }
    }
    
    mutating func compareUserAmount(_ usdAmount: String) -> Bool {
        if Int(usdAmount) != nil {
            return true
        } else {
           return false
        }
    }
    
    mutating func calculateEUR(_ usdAmount: String) -> String {
        var eurConverted : String = ""
        if eurSwitch {
            let eurAmount = Double(usdAmount)
            eurConverted = String(Double(eurAmount!) * 0.93)
            return eurConverted
        } else {
            eurConverted = "N/A"
            return eurConverted
        }
    }
    
    mutating func calculateJPY(_ usdAmount: String) -> String {
        var jpyConverted : String = ""
        if jpySwitch {
            let jpyAmount = Double(usdAmount)
            jpyConverted = String(Double(jpyAmount!) * 150.22)
            return jpyConverted
        } else {
            jpyConverted = "N/A"
            return jpyConverted
        }
    }
    
    mutating func calculateGBP(_ usdAmount: String) -> String {
        var gbpConverted : String = ""
        if gbpSwitch {
            let gbpAmount = Double(usdAmount)
            gbpConverted = String(Double(gbpAmount!) * 0.79)
            return gbpConverted
        } else {
            gbpConverted = "N/A"
            return gbpConverted
        }
    }
    
    mutating func calculateCNY(_ usdAmount: String) -> String {
        var cnyConverted : String = ""
        if cnySwitch {
            let cnyAmount = Double(usdAmount)
            cnyConverted = String(Double(cnyAmount!) * 7.16)
            return cnyConverted
        } else {
            cnyConverted = "N/A"
            return cnyConverted
        }
    }
    
    /*mutating func convertAmounts(_ usdAmount: String) -> String {
        var eurConverted : String = ""
        var jpyConverted: String = ""
        var gbpConverted: String = ""
        var cnyConverted: String = ""
        if eurSwitch {
            let eurAmount = Double(usdAmount)
            eurConverted = String(Double(eurAmount!) * 0.93)
        }
        if jpySwitch {
            let jpyAmount = Double(usdAmount)
            jpyConverted = String(Double(jpyAmount!) * 150.22)
        }
        return eurConverted
    }*/

}
