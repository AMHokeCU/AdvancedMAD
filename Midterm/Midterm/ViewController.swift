//
//  ViewController.swift
//  Midterm
//
//  Created by Alexander Marshall Hoke on 10/13/16.
//  Copyright © 2016 Alexander Marshall Hoke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // outlets and actions for labels/sliders/images/etc
    
    @IBOutlet weak var workoutControl: UISegmentedControl!
    
    @IBOutlet weak var runImage: UIImageView!
    
    @IBAction func changeWorkout(sender: UISegmentedControl) {
        
        changeImage()
    }
    
    
    // variables for workout calculations
    
    let 
    
    
    
    
    // control functions
    
    func changeImage() {
        
        if workoutControl.selectedSegmentIndex == 0 {
            runImage.image = UIImage(named: "run.png")
        }
        
        if workoutControl.selectedSegmentIndex == 1 {
            runImage.image = UIImage(named: "swim.png")
        }
        
        if workoutControl.selectedSegmentIndex == 2 {
            runImage.image = UIImage(named: "bike.png")
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }






}

