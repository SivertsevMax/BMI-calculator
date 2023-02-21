import UIKit

class CalculateViewController: UIViewController {
    
    var BMIResult = ""
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "2.00 m"
        weightLabel.text = "75 kg"
    }
    
    @IBAction func showResult(_ sender: UIButton) {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        let BMI = weight / pow(height, 2)
        BMIResult = String(format: "%.1f", BMI)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    @IBAction func selectHeight(_ sender: UISlider) {
        let selectedHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(selectedHeight) m"
        
    }
    
    @IBAction func selectWeight(_ sender: UISlider) {
        let selectedWeight = Int(sender.value)
        weightLabel.text = "\(selectedWeight) kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIResult = BMIResult
        }
    }
    
}

