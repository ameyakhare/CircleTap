//
//  MainMenuScene.swift
//  CircleTap
//
//  Created by Ameya Khare on 2/28/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {
    var name_text = 
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.cyanColor()
        
        .fontSize = 35
        score_label.fontColor = SKColor.blackColor()
        score_label.position = CGPoint(x: size.width/2, y: size.height*0.9)
        addChild(score_label)
    }
}
