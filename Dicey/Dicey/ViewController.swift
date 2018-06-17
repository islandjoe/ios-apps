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

  let diceFaces = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

  @IBOutlet weak var diceImg1: UIImageView!
  @IBOutlet weak var diceImg2: UIImageView!

  @IBAction func buttonPressed(_ sender: UIButton) {
    randomDice1 = Int(arc4random_uniform(6))
    randomDice2 = Int(arc4random_uniform(6))

    diceImg1.image = UIImage(named: diceFaces[randomDice1])
    diceImg2.image = UIImage(named: diceFaces[randomDice2])
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

