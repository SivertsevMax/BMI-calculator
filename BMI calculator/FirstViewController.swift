import UIKit

class FirstViewController: UIViewController {
    
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
        let result = String(format: "%.1f", BMI)
        print(result)
        
        let secondVC = ResultViewControlleViewController()
        secondVC.BMIResult = result
        self.present(secondVC, animated: true)
        
    }
    
    @IBAction func selectHeight(_ sender: UISlider) {
        let selectedHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(selectedHeight) m"
        
    }
    
    @IBAction func selectWeight(_ sender: UISlider) {
        let selectedWeight = Int(sender.value)
        weightLabel.text = "\(selectedWeight) kg"
    }
    
    func result() -> String {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        let BMI = weight / pow(height, 2)
        let result = String(format: "%.1f", BMI)
        return(result)
    }
    
}

