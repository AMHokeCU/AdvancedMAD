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
    
    @IBOutlet weak var workoutTimeLabel: UITextField!
    
    @IBOutlet weak var workoutControl: UISegmentedControl!
    
    @IBOutlet weak var milesTextField: UITextView!
    
    @IBOutlet weak var caloriesTextField: UITextView!
    
    
    @IBOutlet weak var runImage: UIImageView!
    
    
    
    @IBAction func changeWorkout(sender: UISegmentedControl) {
        
        changeImage()
    }
    
    
    // variables for workout calculations
    
    let runPace:Int = 0
    let swimPace:Int = 0
    let bikePace:Int = 0
    
    var workoutTime:Float = 0.00
    var calories:Int = 0
    var distance:Float = 0.00
    var miles:Float = 0.00
    var hours:Float = 0.00
    
    
    
    
    
    // control functions
    
    func workoutTimeLabelChange() {
        
        if workoutTime < 30.00 {
            // print alert bubble
        }
    }
 
    
    func changeWorkout() {
        
        if workoutControl.selectedSegmentIndex == 0 {
            
            distance = workoutTime / 10

        }
        
        if workoutControl.selectedSegmentIndex == 1 {
            
            distance = workoutTime / 15
        }
        
        if workoutControl.selectedSegmentIndex == 2 {
            
            distance = workoutTime / 2
            
        }
 
        
    }
    
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
    
    
    func updateMiles() {
        // insert miles calculation to milesTextField
    }
    
    func updateCalories() {
        // insert calories calculation to caloriesTextField
        
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

