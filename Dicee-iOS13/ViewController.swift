//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // " ^control key " to create connections from Interface Builder.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber:Int = 1;
    var rightDiceNumber:Int = 4;
    
    var images:Array = [
        UIImage(imageLiteralResourceName:"DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ];

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = images [leftDiceNumber];
        leftDiceNumber = (leftDiceNumber + 1) % 6;
        
        diceImageView2.image = images [rightDiceNumber];
        rightDiceNumber = (rightDiceNumber + 1) % 6;
    }
    
}

