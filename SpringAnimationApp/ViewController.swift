//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Nikolai Maksimov on 25.06.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
    @IBOutlet var springAnimationView: SpringView!
    
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
            }
    }
    
    @IBAction func springAnimationButton(_ sender: SpringButton) {
        springAnimationView.animation = "pop"
        springAnimationView.curve = "spring"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 1
        springAnimationView.animate()
        
        sender.animation = "wobble"
        sender.animate()
        
    }
    
}

