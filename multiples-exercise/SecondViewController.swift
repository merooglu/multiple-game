//
//  SecondViewController.swift
//  multiples-exercise
//
//  Created by Mehmet Eroğlu on 3.02.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    
    var viewController: ViewController!
    
    var runningSum = 0
    let MAX_SUM = 50

    
    @IBOutlet weak var addingLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print( viewController.enteringData)
        
    }
    
    @IBAction func addBtnClicked (Sender : UIButton){
    
        let newSum = runningSum + viewController.enteringData
        updateLbl(oldSum: runningSum, mul: viewController.enteringData, newSum: newSum)
        runningSum += viewController.enteringData
        
        if gameOver(){
            restartGame()
        }
        
    }
    
    func restartGame () {
    
            viewController.enteringData = 0
            viewController.whatMultipleTxt.text = ""
        
        self.dismiss(animated: true, completion: {})
        
        resetLbl()
        
    
    }
    
    
    func resetLbl(){
        
        addingLbl.text = "Press Add to add"
    
    }
    
    
    func gameOver() -> Bool{
        if runningSum >= MAX_SUM {
            return true
        } else {
            return false
        }
        
    }
    
    func updateLbl(oldSum:Int, mul:Int, newSum:Int){
        
        addingLbl.text = "\(oldSum) + \(mul) = \(newSum)"
    
    }
    
    
}
