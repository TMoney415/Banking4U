//
//  OverallExpenses2ViewController.swift
//  Banking4U
//
//  Created by Anthony Delucchi on 5/17/16.
//  Copyright © 2016 Tyler Ray. All rights reserved.
//

import UIKit

class OverallExpenses2ViewController: UIViewController {
    
    var type = ""
    var propertyValueNumber:Double?
    var overallExpensesNumber:Double?
    var overallExpensesNumber2:Double?
    var gasExpenseInputNumber:Double?
    var waterExpenseInputNumber:Double?
    var electricExpenseInputNumber:Double?
    var gasConfirm:Bool?
    var waterConfirm:Bool?
    var electricConfirm:Bool?
    
    @IBOutlet weak var gasExpensesBox: UITextField!
    @IBOutlet weak var waterExpensesBox: UITextField!
    @IBOutlet weak var electricExpensesBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(type)
        print(overallExpensesNumber)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func gasExpenseInput(sender: AnyObject) {
        if let inputStr = gasExpensesBox.text, gasExpense = Double(inputStr) {
            gasExpenseInputNumber = gasExpense
            gasConfirm = true
        }
        overallExpenses()
    }
    @IBAction func waterExpenseInput(sender: AnyObject) {
        if let inputStr = waterExpensesBox.text, waterExpense = Double(inputStr) {
            waterExpenseInputNumber = waterExpense
            waterConfirm = true
        }
        overallExpenses()
    }
    @IBAction func electricExpenseInput(sender: AnyObject) {
        if let inputStr = electricExpensesBox.text, electricExpense = Double(inputStr) {
            electricExpenseInputNumber = electricExpense
            electricConfirm = true
        }
        overallExpenses()
    }
    func overallExpenses() {
        if gasConfirm == true && waterConfirm == true && electricConfirm == true {
            overallExpensesNumber2 = overallExpensesNumber! + gasExpenseInputNumber! + waterExpenseInputNumber! + electricExpenseInputNumber!
        }
        print(overallExpensesNumber2)
    }
}
