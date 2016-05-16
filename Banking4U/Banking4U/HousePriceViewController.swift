//
//  HousePriceViewController.swift
//  Banking4U
//
//  Created by Anthony Delucchi on 5/12/16.
//  Copyright © 2016 Tyler Ray. All rights reserved.
//

import UIKit

class HousePriceViewController: UIViewController {
    
    var propertyTax:String?
    var type = ""

    @IBOutlet weak var propTaxLabel: UILabel!
    @IBOutlet weak var propertyTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.'
        print(type)
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
        propertyTypeLabel.text = "Original House Value"
    }
    func businessPropTaxVerify() {
        propTaxLabel.text = propertyTax
        propertyTypeLabel.text = "Original Property Value"
    }
    

}
