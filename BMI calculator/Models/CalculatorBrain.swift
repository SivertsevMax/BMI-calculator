import UIKit

struct CalculatorBrain {
    var BMIResult: BMI?
    
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let BMIValue = weight / pow(height, 2)
        
        if BMIValue < 18.5 {
            BMIResult = BMI(value: BMIValue, advice: "", color: .blue)
        } else if BMIValue < 24.9 {
            BMIResult = BMI(value: BMIValue, advice: "Healthy", color: .green)
        } else if BMIValue < 30 {
            BMIResult = BMI(value: BMIValue, advice: "Overweight", color: .yellow)
        } else if BMIValue < 40 {
            BMIResult = BMI(value: BMIValue, advice: "Obese", color: .orange)
        } else {
            BMIResult = BMI(value: BMIValue, advice: "Extremely obese", color: .red)
        }
        print(BMIResult?.value ?? 0.0)
        
    }
    
    func getBMIValue() -> String {
        let BMIResult = String(format: "%.1f", BMIResult?.value ?? 0.0)
        return BMIResult
    }
    
    func getAdvice() -> String {
        let BMIResult = BMIResult?.advice ?? "error"
        return BMIResult
    }
    
    func getColor() -> UIColor {
        let color = BMIResult?.color ?? .tintColor
        return color
    }
}
