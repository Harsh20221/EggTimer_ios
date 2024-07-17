//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softtime=5;
    let mediumtime=7;
    let hardtime=12;
    @IBAction func EggController(_ sender: UIButton) {
        let hardness=sender.currentTitle
        switch hardness {
        case "Soft":
            print("SoftEgg")
        case "Medium":
            print("Mediumegg")
        case "Hard":
            print("HardEgg")
        default:  ///!! Do not forget to write the default statement else switch case must be exthaustive error will happen
            print("NoEgg")
            
        }
        
        
    }
}
