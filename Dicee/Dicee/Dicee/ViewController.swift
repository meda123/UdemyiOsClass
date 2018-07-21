//
//  ViewController.swift
//  Dicee
//
//  Created by Medalis on 7/7/18.
//  Copyright © 2018 Medalis_Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // We count starting at 0 and you can only store same type
    let diceArray = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    // Function that only gets triggered when the view loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    
    func updateDiceImages()  {
        
        // the arc4random_uniform is a built-in formula (between 0-5, use 6)
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        
        // Really goodp practice to type evrything out instead of Copy/Paste
        diceImageView1.image = UIImage(named:diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named:diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }


}



















