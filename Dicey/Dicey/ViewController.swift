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

  let diceFaces = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]

  @IBOutlet weak var diceImg1: UIImageView!
  @IBOutlet weak var diceImg2: UIImageView!

  fileprivate func rollDice() {
    randomDice1 = Int(arc4random_uniform(6))
    randomDice2 = Int(arc4random_uniform(6))

    diceImg1.image = diceFaces[randomDice1]
    diceImg2.image = diceFaces[randomDice2]
  }

  @IBAction func buttonPressed(_ sender: UIButton) {
    rollDice()
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    rollDice()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

