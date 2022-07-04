//
//  TipBrain.swift
//  Tipsy
//
//  Created by IACD-013 on 2022/07/04.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct TipBrain{
    private var tip: Tip?
    
    mutating func calculateTip(bill billAmount:Double, tipPct: Double, numOfPpl: Int){
        let tipPerc = tipPct / 100
        tip?.totalAmount = tipPerc + billAmount
        
        let splitAmt = tip?.totalAmount ?? 0.0 / Double(numOfPpl)
        tip?.splitAmount = splitAmt
        
        tip?.numOfPeople = numOfPpl
        tip?.tipPct = tipPct
    }
    
    func getSplitAmount() -> Double{
        return tip?.splitAmount ?? 0.0
    }
    
    func getTotalTip() -> (totalAmount: Double, numOfPpl: Int, tipPerc: Double){
        return(tip?.totalAmount ?? 0.0, tip?.numOfPeople ?? 0 , tip?.tipPct ?? 0.0)
    }
        
    
}
