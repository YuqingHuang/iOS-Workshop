//
//  Bullet.swift
//  ARViewer
//
//  Created by Faris Sbahi on 6/6/17.
//  Copyright © 2017 Faris Sbahi. All rights reserved.
//

import UIKit
import SceneKit

// Spheres that are shot at the "ships"
class Bullet: SCNNode {
    
    var image: UIImage?
    
    init(geometry: SCNGeometry) {
        super.init()
        
        self.geometry = geometry
//        self.image = UIImage(named: String(describing: self.geometry))!
        
        setBullet()
    }
    
    override init () {
        super.init()
        
//        let sphere = SCNSphere(radius: 0.025)
        
        self.geometry = SCNBox(width: 0.025, height: 0.025, length: 0.025, chamferRadius: 0.0)
//        self.image = UIImage(named:String(describing: self.geometry))!
        
        setBullet()
    }
    
    func setBullet() {
        let shape = SCNPhysicsShape(geometry: self.geometry!, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: shape)
        self.physicsBody?.isAffectedByGravity = false
        
        // see http://texnotes.me/post/5/ for details on collisions and bit masks
        self.physicsBody?.categoryBitMask = CollisionCategory.bullets.rawValue
        self.physicsBody?.contactTestBitMask = CollisionCategory.ship.rawValue
        
        // add texture
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "bullet_texture")
        self.geometry?.materials  = [material]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
