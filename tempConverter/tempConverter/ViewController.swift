//
//  ViewController.swift
//  tempConverter
//
//  Created by arturs.ziemelis on 14/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toFarenOrKelvinLabel: UILabel!
    @IBOutlet weak var fromCelsiusLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func slideTheTemp(_ sender: UISlider) {
        
    }
    
    @IBAction func fahrenheitOrKelvin(_ sender: UISegmentedControl) {
        
//        if sender.selectedSegmentIndex == 0 {
//            toFarenOrKelvinLabel.text = String(Float(fromCelsiusLabel * 32))
//        }
    }
    
}

