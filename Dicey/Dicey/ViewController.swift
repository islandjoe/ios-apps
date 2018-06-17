//
//  ViewController.swift
//  Dicey
//
//  Created by Arthur Kho on 16/06/2018.
//  Copyright © 2018 Arthur Kho. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

  var randomDice1 = 0
  var randomDice2 = 0

  @IBOutlet weak var dice1: UIImageView!
  @IBOutlet weak var dice2: UIImageView!
  @IBOutlet weak var diceImg1: UIImageView!
  @IBOutlet weak var diceImg2: UIImageView!

  @IBAction func buttonPressed(_ sender: UIButton) {
    randomDice1 = Int(arc4random_uniform(6))
    randomDice2 = Int(arc4random_uniform(6))

    print(randomDice1)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

