import UIKit

class ViewController: UIViewController {
    
  let questions = QuestionBank()
  var pickedAnswer = false
  var questionNumber = 0
  var score = 0
  var numOfQuestions = 0
    
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet var progressBar: UIView!
  @IBOutlet weak var progressLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    numOfQuestions = questions.list.count
    nextQuestion()
  }


  @IBAction func answerPressed(_ sender: AnyObject) {
    if sender.tag == 1 {
      pickedAnswer = true
    }
    else if sender.tag == 2 {
      pickedAnswer = false
    }

    checkAnswer()

    questionNumber += 1
    nextQuestion()
  }


  func updateUI() {
    scoreLabel.text = "Score: \(score)"
    progressLabel.text = "\(questionNumber + 1) / \(numOfQuestions)"
    progressBar.frame.size.width = (view.frame.size.width / CGFloat(numOfQuestions)) * CGFloat(questionNumber + 1)
  }


  func nextQuestion() {
    if questionNumber < numOfQuestions {
      questionLabel.text = questions.list[ questionNumber ].text
      updateUI()
    }
    else {
      let alert = UIAlertController(title: "Good job!",
                                  message: "You've reached the end of the quiz, start over?",
                                preferredStyle: .alert)
      let restart = UIAlertAction(title: "Restart",
                                style: .default)
      { (UIAlertAction) in
        self.startOver()
      }

      alert.addAction(restart)
      present(alert, animated: true, completion: nil)
    }
  }


  func checkAnswer() {

    let correctAnswer = questions.list[ questionNumber ].answer

    if correctAnswer == pickedAnswer {
      ProgressHUD.showSuccess("Correct!")
      score += 1
    }
    else {
      ProgressHUD.showError("Wrong.")
    }
  }


  func startOver() {
    questionNumber = 0
    score = 0
    
    nextQuestion()
  }



}
