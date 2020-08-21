//
//  ParticlessView.swift
//  WeatherApp
//
//  Created by Guseyn Gasharov on 15.06.2020.
//  Copyright © 2020 Guseyn Gasharov. All rights reserved.
//

import UIKit
import SpriteKit

class ParticlessView: SKView {
    
    override func didMoveToSuperview() {
        let scene = SKScene(size: self.frame.size)
        scene.backgroundColor = UIColor.clear
        self.presentScene(scene)
        
        self.allowsTransparency = true
        self.backgroundColor = UIColor.clear
        
        if let particles = SKEmitterNode(fileNamed: "ParticleScene.sks") {
            particles.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height)
            particles.particlePositionRange = CGVector(dx: self.bounds.size.width, dy: 0)
            scene.addChild(particles)
        }
    }
    
}
