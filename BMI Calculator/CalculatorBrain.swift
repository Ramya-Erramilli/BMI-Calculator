//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ramya Seshagiri on 01/05/20.

import Foundation
import UIKit
struct CaluclatorBrain {
    
    var bmi:BMI?
   
    mutating func calculateBMI(height:Float,weight:Float){
        var bmiValue = weight / (height*height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        }else if bmiValue < 24.9{
            
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }

    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.black
    }
    
}
