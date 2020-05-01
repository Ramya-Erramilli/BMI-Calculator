
import UIKit

class CaluculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
//    var height = 0
//    var weight = 0
    
    var caluclatorBrain = CaluclatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(String(Int(sender.value)))Kg"
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        caluclatorBrain.calculateBMI(height: height, weight:weight)
        

        self.performSegue(withIdentifier: "goToResult", sender: self)

//        var secondVC = SecondViewController()
//        secondVC.bmivalue = bmi_round
//
//        self.present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            var newVC = segue.destination as! NextViewController
            newVC.bmiValue = caluclatorBrain.getBMIValue()
            newVC.advice = caluclatorBrain.getAdvice()
            newVC.color = caluclatorBrain.getColor()
        }
    }
    
    
}

