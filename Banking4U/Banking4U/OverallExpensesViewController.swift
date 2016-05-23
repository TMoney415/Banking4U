//
//  OverallExpensesViewController.swift
//  Banking4U
//
//  Created by Anthony Delucchi on 5/16/16.
//  Copyright © 2016 Tyler Ray. All rights reserved.
//

import UIKit

class OverallExpensesViewController: UIViewController {
    
    var type = ""
    var propertyValueNumber:Double?
    var propertyTax:String?
    var foodExpenseInputNumber:Double?
    var clothingExpenseInputNumber:Double?
    var travelExpenseInputNumber:Double?
    var overallExpensesNumber:Double?
    var foodConfirm:Bool?
    var clothingConfirm:Bool?
    var travelConfirm:Bool?

    @IBOutlet weak var foodExpenseBox: UITextField!
    @IBOutlet weak var clothingExpenseBox: UITextField!
    @IBOutlet weak var travelExpenseBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(type)
        print(propertyTax)
        print(propertyValueNumber)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func foodExpenseInput(sender: AnyObject) {
        if let inputStr = foodExpenseBox.text, foodExpense = Double(inputStr) {
            foodExpenseInputNumber = foodExpense
            foodConfirm = true
        }
        overallExpenses()
    }
    @IBAction func clothingExpenseInput(sender: AnyObject) {
        if let inputStr = clothingExpenseBox.text, clothingExpense = Double(inputStr) {
            clothingExpenseInputNumber = clothingExpense
            clothingConfirm = true
        }
        overallExpenses()
    }
    @IBAction func travelExpenseInput(sender: AnyObject) {
        if let inputStr = travelExpenseBox.text, travelExpense = Double(inputStr) {
            travelExpenseInputNumber = travelExpense
            travelConfirm = true
        }
        overallExpenses()
    }
//------------------------------------------------------------------------------------
    func overallExpenses() {
        if foodConfirm == true && clothingConfirm == true && travelConfirm == true {
                overallExpensesNumber = travelExpenseInputNumber! + clothingExpenseInputNumber! + foodExpenseInputNumber! + propertyValueNumber!
        }
        print(overallExpensesNumber)
//fix this code-----------------------------------------------------------------------
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "overallExpensesToOverallExpenses2") {
            var svc = segue.destinationViewController as! OverallExpenses2ViewController;
            
            svc.type = self.type
            svc.overallExpensesNumber = overallExpensesNumber
            svc.propertyValueNumber = propertyValueNumber
        }
    }

}
