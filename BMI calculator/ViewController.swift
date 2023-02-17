import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func showResult(_ sender: UIButton) {
    }
    
    @IBAction func selectHeight(_ sender: UISlider) {
        heightLabel.text = "\((sender.value * 1.0).rounded())m"
    }
    
    @IBAction func selectWeight(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value * 150))kg"
    }
}

