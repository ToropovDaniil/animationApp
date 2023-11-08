//
//  Models.swift
//  animationApp
//
//  Created by Торопов Даниил  on 07.11.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimationsData() -> [Animation] {
        var animations: [Animation] = []
        let dataShared = DataSource.shared
            
        let presets = dataShared.namesAnimation
        let curves = dataShared.namesCurve
        let forces = dataShared.forces
        let durations = dataShared.durations
        
        for index in 0..<presets.count {
            let animation = Animation(
                preset: presets[index],
                curve: curves[index],
                force: forces[index],
                duration: durations[index],
                delay: dataShared.delay
            )
            animations.append(animation)
        }
        return animations
    }
}
