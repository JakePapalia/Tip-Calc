//
//  ViewController.swift
//  TipCalc
//
//  Created by Jake Papaalia on 12/21/16.
//  Copyright © 2016 Jake Papalia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var twentyfiveButton: UIButton!
    var tipPercent = 0.0
    var splitNumber = 1
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func resetButtons() {
        tenButton.setImage(UIImage(named: "10Unselected"), for: UIControlState())
        fifteenButton.setImage(UIImage(named: "15Unselected"), for: UIControlState())
        twentyButton.setImage(UIImage(named: "20Unselected"), for:UIControlState())
        twentyfiveButton.setImage(UIImage(named: "25Unselected"), for: UIControlState())
    }
    @IBAction func on10ButtonTapped(_ sender: UIButton) {
        resetButtons()
        tenButton.setImage(UIImage(named: "10Selected"), for: UIControlState())
        tipPercent = 0.10
        calculate()
    }
    @IBAction func on15ButtonTapped(_ sender: UIButton) {
        resetButtons()
        fifteenButton.setImage(UIImage(named: "15Selected"), for: UIControlState())
        tipPercent = 0.15
        calculate()
    }
    @IBAction func on20ButtonTapped(_ sender: UIButton) {
        resetButtons()
        twentyButton.setImage(UIImage(named: "20Selected"), for: UIControlState())
        tipPercent = 0.20
        calculate()
    }
    @IBAction func on25ButtonTapped(_ sender: UIButton) {
        resetButtons()
        twentyfiveButton.setImage(UIImage(named: "10Selected"), for: UIControlState())
        tipPercent = 0.25
        calculate()
    }
    func calculate() {
        if let amount = Double(billAmountTextField.text!) {
            let tip = (amount * tipPercent) / Double(splitNumber)
            let total = (amount / Double(splitNumber)) + tip
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String( format: "$%.2f", total)
            billAmountTextField.endEditing(true)
        }
    }
}

