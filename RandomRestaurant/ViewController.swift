//
//  ViewController.swift
//  RandomRestaurant
//
//  Created by MXC Swift on 10/13/20.
//  Copyright © 2020 MXC Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var wheelOfFortune: UIImageView!
    
    @IBOutlet var wheelOfFortuneLabel: UILabel!
    var lightOn = true
    //var backgroundColorArray: [UIColor] = [.black, .blue, .red, .orange, .cyan, .green, .gray, .yellow, .brown]
    var myint = 12
    override func viewDidLoad() {
        super.viewDidLoad()
        wheelOfFortune.image = UIImage(named: "WheelOfFortune")
        updateUI()
        
    }

    @IBAction func buttonPressed(_ sender: Any){
        
        lightOn.toggle()
        
        
        let foodArray = [#imageLiteral(resourceName: "pizza"), #imageLiteral(resourceName: "burger"), #imageLiteral(resourceName: "chicken"), #imageLiteral(resourceName: "chinese food"),]

        wheelOfFortune.image = foodArray.randomElement()
        
        switch wheelOfFortune.image{
            
        case #imageLiteral(resourceName: "burger"):
            wheelOfFortuneLabel.text = "Try a Burger Place!"
        case #imageLiteral(resourceName: "pizza"):
            wheelOfFortuneLabel.text = "Let's get Pizza!"
        case #imageLiteral(resourceName: "chicken"):
            wheelOfFortuneLabel.text = "You can Never go wrong with chicken!"
        case #imageLiteral(resourceName: "chinese food"):
            wheelOfFortuneLabel.text = "We're Thinking Chinese!"
        case #imageLiteral(resourceName: "Seafood"):
            wheelOfFortuneLabel.text = "How's About Some SeaFood?"
            
        default: break
        
    }
        
   updateUI()
    
        
}
    func updateUI() {
       view.backgroundColor = lightOn ? .systemTeal : .purple
           
       }
    
}

