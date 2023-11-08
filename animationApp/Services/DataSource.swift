//
//  DataSource.swift
//  animationApp
//
//  Created by Торопов Даниил  on 07.11.2023.
//

import Foundation

final class DataSource {
    
    static let shared = DataSource()
    
    let namesAnimation = [
        "pop", "slideLeft", "slideRight",
        "slideDown", "slideUp", "squeezeLeft",
        "squeezeRight", "squeezeDown", "squeezeUp",
        "fadeIn", "fadeOut", "fadeOutIn",
        "fadeInLeft", "fadeInRight", "fadeInDown",
        "fadeInUp", "zoomIn", "zoomOut",
        "fall", "shake", "flipX",
        "flipY", "morph", "squeeze",
        "flash", "wobble", "swing"]
    
    let namesCurve = [
        "easeIn", "easeOut", "easeInOut",
        "linear", "spring", "easeInSine",
        "easeOutSine", "easeInOutSine", "easeInQuad",
        "easeOutQuad", "easeInOutQuad", "easeInCubic",
        "easeOutCubic", "easeInOutCubic", "easeInQuart",
        "easeOutQuart", "easeInOutQuart", "easeInQuint",
        "easeOutQuint", "easeInOutQuint", "easeInExpo",
        "easeOutExpo", "easeInOutExpo", "easeInCirc",
        "easeOutCirc", "easeInOutCirc", "easeInBack",
        "easeOutBack","easeInOutBack"]
    
    var forces: [Double] = []
    var durations: [Double] = []
    let delay = 1.0
    
    private init() {
        for _ in 0..<namesAnimation.count {
            let force = Double.random(in: 0.0..<3.0)
            let duration = Double.random(in: 0.0..<3.0)
            
            forces.append(force)
            durations.append(duration)
        }
    }
}
