//
//  ViewController.swift
//  Tips Calculator
//
//  Created by Hsuen-Ju Li on 2018/7/30.
//  Copyright © 2018年 Hsuen-Ju Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet var priceTextField : UITextField!
    @IBOutlet var percentageTextField : UITextField!
    @IBOutlet var totalPrice : UILabel!
    @IBOutlet var peopleShareTextField : UITextField!
    @IBOutlet var sharePriceLabel : UILabel!
    
    
    //Variables
    var price = 0.0
    var percentage = 0.0
    var total = 0.0
    var people = 0
    var sharePrice = 0.0
    
    func priceInit(){
        price = 0.0
        percentage = 0.0
        total = 0.0
        people = 0
        sharePrice = 0.0
        priceTextField.text = ""
        percentageTextField.text = ""
        totalPrice.text = String(total)
        peopleShareTextField.text = ""
        sharePriceLabel.text = String(sharePrice)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        priceInit()
    }

    @IBAction func countBtnPressed(_ sender : UIButton){
        if percentageTextField != nil && priceTextField != nil{
            price = Double(priceTextField.text!)!
            percentage = Double(percentageTextField.text!)!
            calTotalPrice(price: price, percentage: percentage)
        }
        
    }

    @IBAction func sharePeopleInput(_ sender: Any) {
        self.resignFirstResponder()
        sharePrice = total / Double(peopleShareTextField.text!)!
        sharePriceLabel.text = String(format: "%.2f", sharePrice)
    }
    
    func calTotalPrice(price : Double, percentage : Double){
        total = price + (price * (percentage / 100))
        totalPrice.text = String(format: "%.2f", total)
    }
    
    @IBAction func clearBtnPressed(_ sender : UIButton){
        priceInit()
    }
    
    
}

