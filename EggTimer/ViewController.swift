//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var secondsRemaining = 5
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 5]
    
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
        /* if let buttonTitle = sender.title(for: .normal) {
         print(buttonTitle)
         } */
        let hardness = sender.currentTitle
        secondsRemaining = eggTimes[hardness!]!
        
        print(hardness!)
        
        if sender.currentTitle == "Soft" {
            print(softTime)
        }
        else if sender.currentTitle == "Medium" {
            print(mediumTime)
        }
        else {
            print(hardTime)
        }
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondLabel.text = "\(self.secondsRemaining) saniye..."
                self.secondsRemaining -= 1
            } else {
                
                Timer.invalidate()
                self.textTitle.text = "DONE!"
                self.secondLabel.text = "Yumurtanız Hazır !"
            }
            
        }
        
        
    }
}
