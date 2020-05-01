//
//  NextViewController.swift
//  BMI Calculator
//
//  Created by Ramya Seshagiri on 30/04/20.


import UIKit

class NextViewController: UIViewController {

    
    var bmiValue:String?
    var advice:String?
    var color: UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
 
}
