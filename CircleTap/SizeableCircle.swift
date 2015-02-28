//
//  SizeableCircle.swift
//  CircleTap
//
//  Created by Ameya Khare on 2/28/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import SpriteKit

class SizeableCircle: SKShapeNode {
    
    var radius: CGFloat {
        didSet {
            self.path = SizeableCircle.path(self.radius)
        }
    }
    
    init(radius: CGFloat, position: CGPoint) {
        self.radius = radius
        
        super.init()
        
        self.path = SizeableCircle.path(self.radius)
        self.position = position
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    class func path(new_radius: CGFloat) -> CGMutablePathRef {
        var path: CGMutablePathRef = CGPathCreateMutable()
        CGPathAddArc(path, nil, CGFloat(0.0), CGFloat(0.0), new_radius, CGFloat(0.0), CGFloat(2.0 * M_PI), true)
        return path
    }
    
    func changeToRandomColor () {
        let color = random(min: 1, max: 8)
        
        if (1 <= color && color <= 2) {self.fillColor = SKColor.redColor()}
        else if (2 <= color && color <= 3) {self.fillColor = SKColor.orangeColor()}
        else if (3 <= color && color <= 4) {self.fillColor = SKColor.yellowColor()}
        else if (4 <= color && color <= 5) {self.fillColor = SKColor.greenColor()}
        else if (5 <= color && color <= 6) {self.fillColor = SKColor.blueColor()}
        else if (6 <= color && color <= 7) {self.fillColor = SKColor.magentaColor()}
        else {self.fillColor = SKColor.purpleColor()}
    }
    
    func spawnToRandomLocation (#width: CGFloat, height: CGFloat) {
        let randomX = random(min: width*0.3, max: width*0.7)
        let randomY = random(min: 0.0, max: height)
        
        self.position = CGPoint(x:randomX, y:randomY)
    }
    
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    func random(#min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
}
