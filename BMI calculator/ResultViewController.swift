import UIKit

class ResultViewController: UIViewController {
    
    var BMIResult: String?
    
    @IBOutlet weak var showRecomendation: UILabel!
    @IBOutlet weak var showResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResult.text = BMIResult
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
