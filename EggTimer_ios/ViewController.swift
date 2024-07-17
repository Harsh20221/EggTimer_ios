//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softtime=300;
    let mediumtime=420;
    let hardtime=720;
    
    var timer = Timer() //# This timer variable will fix the issue of multiple timer running at same time
    @IBAction func EggController(_ sender: UIButton) {
        var timeLeft : Int=0;
        timer.invalidate() //* we'll invalidate current timer if we press the button again to avaoid multiple timers running at same time issue
        
        switch sender.currentTitle{
        case "Soft":
            timeLeft=softtime;
        case "Medium":
            timeLeft=mediumtime
        case "Hard":
            timeLeft=hardtime
        default : print("Error");
        }
        
       
                /////This is How you can create a Timer in Swift
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                               print("timer fired!")
                        
                            timeLeft -= 1
                          print(timeLeft, "Seconds")
                        
                          if(timeLeft==0){
                                    timer.invalidate()
                                }
                       }
    }
}
