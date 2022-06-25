//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Nikolai Maksimov on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
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
}

