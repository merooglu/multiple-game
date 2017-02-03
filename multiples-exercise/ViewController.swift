//
//  ViewController.swift
//  multiples-exercise
//
//  Created by Mehmet Eroğlu on 3.02.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    //Variables
    var enteringData = 0
    
    
    
    //Outlets
    @IBOutlet weak var whatMultipleTxt: UITextField!
   // @IBOutlet weak var playBtn: UIButton!
    
    @IBAction func playBtnClicked (sender : UIButton) {
    
        if whatMultipleTxt.text != nil && whatMultipleTxt.text != "" {
            enteringData = Int(whatMultipleTxt.text!)!
            performSegue(withIdentifier: "firstToSecond", sender: nil)
        }

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstToSecond" {
            let DestViewController = segue.destination as! SecondViewController
            DestViewController.viewController = self
        }
    }
    
}
