//
//  ViewController.swift
//  Lab6
//
//  Created by Alexander Marshall Hoke on 10/6/16.
//  Copyright © 2016 Alexander Marshall Hoke. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        
        return true
        
    }
    
    var audioPlayer : AVAudioPlayer?
    
    @IBAction func handleLongPress(sender: UILongPressGestureRecognizer) {
        
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("breakbeat", ofType: "wav")
        
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
    
        audioPlayer = try? AVAudioPlayer(contentsOfURL: fileURL)
        
        if audioPlayer != nil {
            audioPlayer!.play()
        }
        
    }
    

    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
    
        let translation = sender.translationInView(view)
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view)
    }
    
    
    @IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
    
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale = 1
    }
    
    
    @IBAction func handleRotation(sender: UIRotationGestureRecognizer) {
    
        sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation = 0
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

