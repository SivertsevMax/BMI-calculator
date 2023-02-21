import UIKit

class ResultViewController: UIViewController {
    
    var BMIResult: String?
    var BMIAdvice: String?
    var color: UIColor?
    
    @IBOutlet weak var showRecomendation: UILabel!
    @IBOutlet weak var showResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResult.text = BMIResult
        showRecomendation.text = BMIAdvice
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
