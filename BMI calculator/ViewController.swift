import UIKit

class ViewController: UIViewController {
    
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
        
        print(String(format: "%.2f", BMI))
        tapOnButton()
    }
    
    @IBAction func selectHeight(_ sender: UISlider) {
        let selectedHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(selectedHeight) m"
        
    }
    
    @IBAction func selectWeight(_ sender: UISlider) {
        let selectedWeight = Int(sender.value)
        weightLabel.text = "\(selectedWeight) kg"
    }
    @objc func tapOnButton() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "SecondViewController")
        self.present(controller, animated: true)
        
        
            }
}

