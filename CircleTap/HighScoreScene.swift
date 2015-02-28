//
//  HighScoreScene.swift
//  CircleTap
//
//  Created by Ameya Khare on 2/28/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import SpriteKit
import Parse

class HighScoreScene: SKScene {
    var scores = [PFObject]()
    
    override func didMoveToView (view: SKView) {
        // parse local datastore enabled
        // parse initialized
        
        loadScores() // call for current info on view load
        drawHighScores()
    }
    
    func loadScores () {
        scores = [PFObject]()
        
        var query = PFQuery(className:"Player_High_Scores")
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                // The find succeeded.
                println("Successfully retrieved \(objects?.count) scores.")
                // Do something with the found objects
                for object in objects! {
                    self.scores.append(object as PFObject)
                }
            } else {
                // Log details of the failure
                println("Error: \(error) \(error!.userInfo!)")
            }
        }
    }
    
    func drawHighScores () {
        var i = 0
        
        while i < 10 && i < scores.count {
            var player_label = SKLabelNode(fontNamed: "Helvetica-Light")
            player_label.fontSize = 30
            player_label.fontColor = SKColor.blackColor()
            
            player_label.position.x = CGFloat(size.width*0.5)
            player_label.position.y = CGFloat(size.height-(0.1*CGFloat(i)))
            
            player_label.text = "hi"
            addChild(player_label)
        }
    }
}
