//
//  ViewController.swift
//  tip calculator
//
//  Created by Danny Hoang on 11/20/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Billamounttextfield: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipcontroller: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ontap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculatetip(_ sender: Any) {
        let bill = Double(Billamounttextfield.text!) ?? 0
        let TipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * TipPercentages[tipcontroller.selectedSegmentIndex]
        let total = bill + tip
        tipPercentageLabel.text = String(format: "$%.2f", tip)
            
        totalLabel.text = String(format: "$%.2f", total)
    }
}

