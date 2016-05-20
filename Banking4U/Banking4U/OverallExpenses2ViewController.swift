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
    var propertyTax:String?
    var propertyValueNumber:Double?

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
    
}
