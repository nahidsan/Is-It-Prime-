//
//  ViewController.swift
//  Is It Prime
//
//  Created by Titas on 8/6/15.
//  Copyright (c) 2015 SK NAHID SANWAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var givenNumber: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    
    @IBAction func primeCheckButton(sender: AnyObject) {
        
        if givenNumber.text == nil {
             resultLabel.text = "Please Enter a number!"
        } else {
            var a = givenNumber.text.toInt()
            var isPrime = true
            
            for var i = 2; i < a; i++ {
            if a! % i == 0 {
                isPrime = false
            }
        }
        
        if isPrime == true {
            resultLabel.text = "It's a Prime Number"
            
        } else {
            resultLabel.text = "It's a Non-Prime Number"
        }

        }
        
    } // IBAction closing brace
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

