import UIKit

struct CalculatorBrain {
    var BMIResult: BMI?
    var BMIAdvice: BMI?
    
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let BMIValue = weight / pow(height, 2)
        
        if BMIValue < 18.5 {
            BMIResult = BMI(value: BMIValue, advice: "Eat more", color: .systemCyan)
        } else if BMIValue < 24.9 {
            BMIResult = BMI(value: BMIValue, advice: "You're good", color: .systemGreen)
        } else if BMIValue < 30 {
            BMIResult = BMI(value: BMIValue, advice: "You need to control your eating", color: .systemYellow)
        } else if BMIValue < 40 {
            BMIResult = BMI(value: BMIValue, advice: "You're crazy", color: .systemOrange)
        } else {
            BMIResult = BMI(value: BMIValue, advice: "Please stop eating, you'll die", color: .systemRed)
        }
        print(BMIResult?.value ?? 0.0)
        
    }
    
    func getBMIValue() -> String {
        let BMIResult = String(format: "%.1f", BMIResult?.value ?? 0.0)
        return BMIResult
    }
    
    func getAdvice() -> String {
        return BMIResult?.advice ?? "error"
    }
    
    func getColor() -> UIColor {
        return BMIResult?.color ?? .tintColor
        }
}
