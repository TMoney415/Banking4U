//
//  BusinessCountyViewController.swift
//  Banking4U
//
//  Created by Patrick Brown on 5/6/16.
//  Copyright © 2016 Tyler Ray. All rights reserved.
//

import UIKit

class BusinessCountyViewController: UIViewController {
    
    private let businessCountyPicker = ["Alameda","Alpine","Butte","Calaveras","Colusa", "Contra Costa","Del Norte","El Dorado", "Fresno","Glenn","Humboldt","Imperial","Inyo","Kern","Kings","Lake","Lassen","Los Angeles","Madera","Marin","Mariposa","Mendocino","Merced","Modoc","Mono","Monterey","Napa","Nevada","Orange","Placer","Plumas","Riverside","Sacramento","San Benito","San Bernardino","San Diego","San Francisco","San Joaquin","San Luis Obispo","San Mateo","Santa Barbara","Santa Clara","Santa Cruz","Shasta","Sierra","Siskiyou","Solano","Sonoma","Stanislaus","Sutter","Tehama","Trinity","Tulare","Tuolumne","Ventura","Yolo","Yuba"]
    
    private var businessCountyPickerTranslator: [String: Double] = [
        "Alameda": 0.866,
        "Alpine": 0.725,
        "Butte": 0.735,
        "Calaveras": 0.885,
        "Colusa": 0.820,
        "Contra Costa": 0.943,
        "Del Norte": 0.766,
        "El Dorado": 0.816,
        "Fresno": 0.905,
        "Glenn": 0.732,
        "Humboldt": 0.634,
        "Imperial": 0.940,
        "Inyo": 0.656,
        "Kern": 1.108,
        "Kings": 0.828,
        "Lake": 0.904,
        "Lassen": 0.797,
        "Los Angeles": 0.793,
        "Madera": 0.895,
        "Marin": 0.799,
        "Mariposa": 0.702,
        "Mendocino": 0.689,
        "Merced": 0.940,
        "Modoc": 0.701,
        "Mono": 0.704,
        "Monterey": 0.773,
        "Napa": 0.812,
        "Nevada": 0.828,
        "Orange": 0.715,
        "Placer": 1.019,
        "Plumas": 0.698,
        "Riverside": 1.102,
        "Sacramento": 0.949,
        "San Benito": 0.912,
        "San Bernardino": 0.920,
        "San Diego": 0.781,
        "San Francisco": 0.683,
        "San Joaquin": 1.028,
        "San Luis Obispo": 0.741,
        "San Mateo": 0.701,
        "Santa Barbara": 0.698,
        "Santa Clara": 0.794,
        "Santa Cruz": 0.694,
        "Shasta": 0.775,
        "Sierra": 0.712,
        "Siskiyou": 0.746,
        "Solano": 0.939,
        "Sonoma": 0.792,
        "Stanislaus": 0.999,
        "Sutter": 1.017,
        "Tehama": 0.770,
        "Trinity": 0.567,
        "Tulare": 0.851,
        "Tuolumne": 0.688,
        "Ventura": 0.801,
        "Yolo": 0.926,
        "Yuba": 0.960
    ]

    @IBOutlet var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return businessCountyPicker[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
        return 57
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
    }

    
}
