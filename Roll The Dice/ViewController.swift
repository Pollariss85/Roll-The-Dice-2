//
//  ViewController.swift
//  Roll The Dice
//
//  Created by Robert Harrison on 3/28/20.
//  Copyright © 2020 Robert Harrison. All rights reserved.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {


    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollOutlet: UIButton!
   
    
let diceArray = [ #imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2 1x"), #imageLiteral(resourceName: "dice3 1x"), #imageLiteral(resourceName: "dice 4 1x"), #imageLiteral(resourceName: "dice5 1x"), #imageLiteral(resourceName: "dice 6 1x") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollOutlet.layer.cornerRadius = 15
        

        }

     
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake{
            print("Shake")
               diceImageView1.image = diceArray.randomElement()
            diceImageView2.image = diceArray.randomElement()
            AudioServicesPlaySystemSound(1520)
        }
        else {
            print("nil")
        }
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
      
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        AudioServicesPlaySystemSound(1520)
        
    }
    
    
}

