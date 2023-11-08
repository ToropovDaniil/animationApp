//
//  ViewController.swift
//  animationApp
//
//  Created by Торопов Даниил  on 07.11.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    var animations: [Animation] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animations = Animation.getAnimationsData()
        setlabels()
    }
    
    @IBOutlet weak var springSettingsAnimation: SpringView!
    @IBOutlet weak var springAnimationImage: SpringImageView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        getRandomAnimation()
    }
}

extension AnimationViewController {
    
    private func getRandomAnimation() {
        let randomIndex = Int.random(in: 0..<animations.count)
        let animation = animations[randomIndex]
        
        springAnimationImage.animation = animation.preset
        springAnimationImage.curve = animation.curve
        springAnimationImage.duration = animation.duration
        springAnimationImage.force = animation.force
        springAnimationImage.delay = animation.delay
        springAnimationImage.animate()
        
        buttonLabel.setTitle("Run \(animations[(randomIndex + 1) % animations.count].preset)", for: .normal)
        
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        
        durationLabel.text = String(format: "%.2f", animation.duration)
        forceLabel.text = String(format: "%.2f", animation.force)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
    
    private func setlabels() {
        let randomIndex = Int.random(in: 0..<animations.count)
        let animation = animations[randomIndex]
        
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        
        durationLabel.text = String(format: "%.2f", animation.duration)
        forceLabel.text = String(format: "%.2f", animation.force)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
}
