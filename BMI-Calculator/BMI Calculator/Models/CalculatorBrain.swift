//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zaki Zughbi on 9/27/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmi1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1Decimal
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
    }
    
    func getAdvice() -> String{
        let bmiAdvice = bmi?.advice ?? "No Advice"
        return bmiAdvice
    }
    
    func getColor() -> UIColor{
        let bmiColor = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return bmiColor
    }
}
