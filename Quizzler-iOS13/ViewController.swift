

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        "Four + Two is Six",
        "Ten - Five is One",
        "Six Times Six is Six"
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI(){
        questionLabel.text=quiz[questionNumber]
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber+=1
        updateUI()
    }
    
}

