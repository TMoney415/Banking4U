//
//  HousePriceViewController.swift
//  Banking4U
//
//  Created by Anthony Delucchi on 5/12/16.
//  Copyright © 2016 Tyler Ray. All rights reserved.
//

import UIKit

class HousePriceViewController: UIViewController {
    
    var propertyTax = ""
    var type = ""
    var propertyValueNumber = 0.0
    @IBOutlet weak var propTaxLabel: UILabel!
    @IBOutlet weak var propertyTypeLabel: UILabel!
    @IBOutlet weak var propertyValueLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.'
        print(type)
        print(propertyTax)
        if type == "Personal" {
            personalPropTaxVerify()
        }
        if type == "Business" {
            businessPropTaxVerify()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func personalPropTaxVerify() {
        propTaxLabel.text = propertyTax
        propertyTypeLabel.text = "House Value"
    }
    func businessPropTaxVerify() {
        propTaxLabel.text = propertyTax
        propertyTypeLabel.text = "Property Value"
    }
    @IBAction func propertyValueInput(sender: AnyObject) {
        
        print(propertyValueLabel.text)
        if let inputStr = propertyValueLabel.text, propertyValue = Double(inputStr), tax = Double(propTaxLabel.text!){
            propertyValueNumber = propertyValue * tax * 0.01
            print(propertyValueNumber)
        } else {
            let alert = UIAlertController(title: "ERROR", message: "ENTER NUMBER", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "housePriceToOverallExpenses") {
            var svc = segue.destinationViewController as! OverallExpensesViewController;
            
            svc.propertyTax = String(propertyTax)
            svc.type = self.type
            svc.propertyValueNumber = propertyValueNumber
        }
    }
}