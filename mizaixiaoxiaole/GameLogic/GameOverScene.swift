//
//  GameOverScene.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/6/22.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit
class GameOverScene: SKScene {
    var sprite:SKLabelNode!
    lazy var gameState:GKStateMachine = GKStateMachine(states: [GameOver(scene:self),Gaming(scene:GameScene(fileNamed: "GameScene")!)])
    func bestScore()->Int{
        return UserDefaults.standard.integer(forKey: "BestScore")
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = ((touches as NSSet).anyObject() as AnyObject)
        let location = touch.location(in: self)
        if let sprite = atPoint(location) as? SKSpriteNode {
            if sprite.name == "restart"{
                gameState.enter(Gaming.self)
                let newScene = GameScene(fileNamed: "GameScene")
                newScene?.scaleMode = .fill
                let fade = SKTransition.crossFade(withDuration: 1.0)
                self.view?.presentScene(newScene!, transition: fade)
            }
        }
    }
    override func didMove(to view: SKView) {
        sprite = (self.childNode(withName: "highscore") as! SKLabelNode)
        sprite.text = String(bestScore())
    }
}
