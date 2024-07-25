//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zhanat Shengelbayeva on 14/02/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height,2)
        print(bmiValue)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green
            )
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
        
       //
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        // #colorLiteral() is working only outside of if-else
    }
    
    func getBMIValue() -> String {
        /*if let safeBMI = bmi {
            return String(format: "%.1f", safeBMI)
        } else {
            return "0.0"
        }*/
        
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
        
        /*
        if bmi != nil {
            return String(format: "%.1f", bmi!)
        } else {
            return "0.0"
        }
        */
    }
}
