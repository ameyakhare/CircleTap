//
//  GameScene.swift
//  CircleTap
//
//  Created by Ameya Khare on 2/28/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var play_text = SKLabelNode(fontNamed: "Helvetica-Light")
    var highscore_text = SKLabelNode(fontNamed: "Helvetica-Light")
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.cyanColor()
        
        play_text.fontSize = 35
        highscore_text.fontSize = 35
        play_text.fontColor = SKColor.blackColor()
        highscore_text.fontColor = SKColor.blackColor()
        play_text.position = CGPoint(x: size.width/2, y: size.height*0.5)
        highscore_text.position = CGPoint(x: size.width/2, y: size.height*0.35)
        
        play_text.text = "Play Game"
        highscore_text.text = "Leaderboard"
        
        addChild(play_text)
        addChild(highscore_text)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let touchLocation = touch.locationInNode(self)
        
        if CGRectContainsPoint(play_text.frame, touchLocation) {
            let scene = GamePlayScene(size: size)
            scene.scaleMode = .AspectFill
            self.view?.presentScene(scene)
        } else if CGRectContainsPoint(highscore_text.frame, touchLocation) {
            /*let scene = HighScoreScene(size: size)
            scene.scaleMode = .AspectFill
            self.view?.presentScene(scene)*/
            var alert = UIAlertView(title: "Not Ready",
                message: "We haven't added highscore functionality yet!",
                delegate:self, cancelButtonTitle: "OK");
            alert.show();
        }
    }
}
