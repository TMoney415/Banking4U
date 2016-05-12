//
//  ViewController.swift
//  Banking4U
//
//  Created by Tyler Ray on 5/2/16.
//  Copyright © 2016 Tyler Ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func butPersonal(sender: AnyObject) {
        self.performSegueWithIdentifier("next", sender: "Personal")
    }
    @IBAction func butBusiness(sender: AnyObject) {
        self.performSegueWithIdentifier("next", sender: "Business")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dest = segue.destinationViewController as? PersonalCountyViewController
        dest?.type = sender as! String
    }
}

