//
//  ViewController.swift
//  Dali
//
//  Created by Alexander Marshall Hoke on 8/30/16.
//  Copyright © 2016 Alexander Marshall Hoke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var artImage: UIImageView!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func chooseArt(sender: UIButton) {
        if sender.currentTitle == "Paintings" {
            artImage.image = UIImage(named: "Painting.jpg")
        }
    
        else if sender.currentTitle == "Drawings" {
            artImage.image = UIImage(named: "Drawing.jpg")
        }
    }
    

}

