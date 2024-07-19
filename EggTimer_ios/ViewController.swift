//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softtime=30;
    let mediumtime=42;
    let hardtime=72;
    
    var timer = Timer(); //# This timer variable will fix the issue of multiple timer running at same time
    
   
    
    @IBOutlet var ProgressbarView: UIProgressView!;

    @IBOutlet var Titleoutlet: UILabel!
   
    @IBAction func EggController(_ sender: UIButton) {
        Titleoutlet.text="How do you like your eggs?"
        var timepassed : Int=0;
        timer.invalidate() //* we'll invalidate current timer if we press the button again to avaoid multiple timers running at same time issue
        var totaltime:Int=0;
      
        switch sender.currentTitle{
        case "Soft":
            totaltime=softtime;
        case "Medium":
            totaltime=mediumtime
        case "Hard":
            totaltime=hardtime
        default : print("Error");
        }
        
       
                /////This is How you can create a Timer in Swift
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] timer in
                               print("timer fired!")
                        
                            timepassed += 1
            ProgressbarView.progress=Float(Float(timepassed)/Float(totaltime))
                          print(timepassed, "Seconds")
                        
                          if(timepassed==totaltime){
                                    timer.invalidate()
                              Titleoutlet.text="Done"
                                }
                       }
    }
    
 
    
    
    
    
}
