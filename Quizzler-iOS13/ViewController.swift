

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is Six","True"],
        ["Ten - Five is One","False"],
        ["Six Times Six is Six","False"]
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI(){
        questionLabel.text=quiz[questionNumber][0]
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        }else{
            print("Wrong..")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber+=1
        }else{
            questionNumber = 0
        }
        updateUI()
    }
    
}

