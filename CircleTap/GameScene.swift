//
//  GameScene.swift
//  CircleTap
//
//  Created by Ameya Khare on 2/28/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var gameInProgress:Bool = false
    var currentSize:CGFloat = 0
    var circ = SizeableCircle(radius: 0.0, position: CGPoint(x:0,y:0))
    var diff:CGFloat = 1
    var score = 0
    var score_label = SKLabelNode(fontNamed: "Chalkduster")
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.cyanColor()
        
        restart()
        self.addChild(circ)
        
        score_label.fontSize = 35
        score_label.fontColor = SKColor.blackColor()
        score_label.position = CGPoint(x: size.width/2, y: size.height*0.9)
        addChild(score_label)
    }
    
    func restart () {
        score = 0
        score_label.text = "Score: \(score)"
        circ.position = CGPoint(x:size.width*0.5, y:size.height*0.5)
        circ.radius = size.width*0.12
        circ.changeToRandomColor()
        gameInProgress = false
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        gameInProgress = true
        
        let touch = touches.anyObject() as UITouch
        let touchLocation = touch.locationInNode(self)
        
        if CGRectContainsPoint(circ.frame, touchLocation) {
            circ.radius = size.width*0.12
            circ.changeToRandomColor()
            circ.spawnToRandomLocation(width: size.width, height: size.height)
            score += 1
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        if (!gameInProgress) {return}
        
        circ.radius -= diff
        score_label.text = "Score: \(score)"
        if (circ.radius <= 0) {restart()}
    }
}
