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

    @IBOutlet weak var propTaxLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.'
        printDatSheit()
        propTaxVerify()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printDatSheit() {
        print(propertyTax)
    }
    
    func propTaxVerify() {
        propTaxLabel.text = propertyTax
    }
}
