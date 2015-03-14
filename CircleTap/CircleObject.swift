//
//  CircleObject.swift
//  CircleTap
//
//  Created by Ameya Khare on 2/28/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import SpriteKit

class CircleObject: SKShapeNode {
    var radius:CGFloat = 0.0
    var horzBound:CGFloat = 0.0
    var vertBound:CGFloat = 0.0
    
    init (horzBound: CGFloat, vertBound: CGFloat, radius: CGFloat, circOfSize: CGFloat) {
        super.init(circleOfRadius: circOfSize)
        
        self.position = CGPoint(x: horzBound*0.5, y: vertBound*0.5)
        self.changeToRandomColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func reduceSize () {
        
    }
    
    
}
