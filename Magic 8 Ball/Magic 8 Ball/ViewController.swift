//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Arthur Kho on 18/06/2018.
//  Copyright © 2018 Arthur Kho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
  var randomBallNum = 0

  @IBOutlet weak var imageView: UIImageView!

  @IBAction func buttonPressed(_ sender: UIButton) {
    theAnswer()
  }

  override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    theAnswer()
  }

  fileprivate func theAnswer() {
    randomBallNum = Int( arc4random_uniform(5) )
    imageView.image = UIImage(named: ballArray[ randomBallNum ])
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    theAnswer()
  }

}

