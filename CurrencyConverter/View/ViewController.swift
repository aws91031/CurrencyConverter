//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user250993 on 2/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountTextField: UITextField!
    
    var converterLogic = ConverterLogic()
    
    var amount = ""
    var amountEUR = ""
    var amountJPY = ""
    var amountGBP = ""
    var amountCNY = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func eur(_ sender: UISwitch) {
        converterLogic.setEURSwitch(sender.isOn)
    }
    
    @IBAction func jpy(_ sender: UISwitch) {
        converterLogic.setJPYSwitch(sender.isOn)
    }
    
    @IBAction func gbp(_ sender: UISwitch) {
        converterLogic.setGBPSwitch(sender.isOn)
    }
    
    @IBAction func cny(_ sender: UISwitch) {
        converterLogic.setCNYSwitch(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        let userAmount = amountTextField.text!
        
        let isValid = converterLogic.compareUserAmount(userAmount)
        if isValid {
            amount = userAmount
            amountEUR = converterLogic.calculateEUR(userAmount)
            amountJPY = converterLogic.calculateJPY(userAmount)
            amountGBP = converterLogic.calculateGBP(userAmount)
            amountCNY = converterLogic.calculateCNY(userAmount)
            self.performSegue(withIdentifier: "toConverter", sender: self)
        } else {
            amountTextField.text = "Invalid input"
            amountTextField.textColor = UIColor.red
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverter" {
            let navigation = segue.destination as! ConverterView
            navigation.amount = amount
            navigation.amountEUR = amountEUR
            navigation.amountJPY = amountJPY
            navigation.amountGBP = amountGBP
            navigation.amountCNY = amountCNY
        }
    }
}

