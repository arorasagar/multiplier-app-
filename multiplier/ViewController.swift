//
//  ViewController.swift
//  multiplier
//
//  Created by Sagar Arora  on 5/5/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var multiplier = 0
    var currentMultiplying = 0
    var Max = 50
    
    @IBOutlet weak var MultiplesTextField: UITextField!
    @IBOutlet weak var CurrentMultiplesText: UILabel!
    @IBOutlet weak var MultiplesLogo: UIImageView!
    @IBOutlet weak var AddBtn: UIButton!
    @IBOutlet weak var PlayBtn: UIButton!

    @IBAction func playButton(sender: AnyObject) {
        if (MultiplesTextField.text != nil && MultiplesTextField.text != "") {
       
        MultiplesLogo.hidden = true
        MultiplesTextField.hidden = true
        AddBtn.hidden = false
        PlayBtn.hidden = true
        CurrentMultiplesText.hidden = false
            
            multiplier = Int(MultiplesTextField.text!)!
            currentMultiplying = 0
            
            
            
          
        
        
        }
        
   
    
    }
    
    

   
    
    func updateLbl (oldSum: Int, mul: Int, newSum: Int) {
        
        CurrentMultiplesText.text = "\(oldSum) + \(mul) = \(newSum)"
            
    }
    

    @IBAction func AddMultiplier(sender: AnyObject) {
        let newSum = multiplier + currentMultiplying
       
        currentMultiplying+=multiplier
         updateLbl(currentMultiplying, mul: multiplier, newSum: newSum)
        // taking in a current number thats being multiplied, the multiplier, and the new sum
        // The new sum always stays constant
        // the currentMultiplying changes based on the muliplier 
        
        if isGameOver() {
            
            restartGame()
            
        }
        
    }
    
    func isGameOver() -> Bool {
        if (currentMultiplying >= Max) {
            
            return true
            
        }

        else {
        return false
        }
        
    }
    
    func resetLbl () {
        CurrentMultiplesText.text = "Click Add new to Add Multiples!"
        
    }
    
    func restartGame() {
        multiplier = 0
        MultiplesLogo.hidden = false
        MultiplesTextField.hidden = false
        AddBtn.hidden = true
        PlayBtn.hidden = false
        CurrentMultiplesText.hidden = true
        resetLbl()
      

        
        
    }
    
        
        
        
       
        
            
            
        
            
        
        
        
        
    
    }



   




