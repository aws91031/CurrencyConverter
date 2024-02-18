//
//  ConverterView.swift
//  CurrencyConverter
//
//  Created by user250993 on 2/16/24.
//

import UIKit

class ConverterView: UIViewController {
    
    @IBOutlet weak var amountUSD: UILabel!
    
    @IBOutlet weak var eurAmount: UILabel!
    
    @IBOutlet weak var jpyAmount: UILabel!
    
    @IBOutlet weak var gbpAmount: UILabel!
    
    @IBOutlet weak var cnyAmount: UILabel!
    
    var amount = ""
    
    var amountEUR = ""
    
    var amountJPY = ""
    
    var amountGBP = ""
    
    var amountCNY = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountUSD.text = amount
        eurAmount.text = amountEUR
        jpyAmount.text = amountJPY
        gbpAmount.text = amountGBP
        cnyAmount.text = amountCNY
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
