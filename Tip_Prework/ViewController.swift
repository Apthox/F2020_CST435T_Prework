//
//  ViewController.swift
//  Tip_Prework
//
//  Created by Kevin Guzman on 8/30/20.
//  Copyright © 2020 Kevin Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onBillChange(_ sender: Any) {
        print("Updated")
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.1, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

