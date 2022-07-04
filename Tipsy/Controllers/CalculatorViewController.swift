//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet var billText: UITextField!
    @IBOutlet var zeroPctBtn: UIButton!
    @IBOutlet var tenPctBtn: UIButton!
    @IBOutlet var twentyPctBtn: UIButton!
    @IBOutlet var splitNumberLbl: UILabel!
    
    var tipBrain = TipBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    
    @IBAction func tipChanged(_ sender: UIButton) {
        buttonHighlight(sender)
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLbl.text = "\(Int(sender.value).description)"
    }
    @IBAction func CalculatePressed(_ sender: UIButton) {
        
    }
    
    fileprivate func buttonHighlight(_ sender: UIButton) {
        if sender.currentTitle == "0%"{
            zeroPctBtn.isSelected = true
            tenPctBtn.isSelected = false
            twentyPctBtn.isSelected = false
        }
        else if sender.currentTitle == "10%" {
            zeroPctBtn.isSelected = false
            tenPctBtn.isSelected = true
            twentyPctBtn.isSelected = false
        }
        else {
            zeroPctBtn.isSelected = false
            tenPctBtn.isSelected = false
            twentyPctBtn.isSelected = true
        }
    }
    
}

