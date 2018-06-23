//
//  StartScene.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/29.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import SpriteKit
import GameplayKit
class StartScene:SKScene{
    lazy var gameState:GKStateMachine = GKStateMachine(states: [Start(scene:self),Gaming(scene:GameScene(fileNamed: "GameScene")!)])
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        switch gameState.currentState {
        case is Start:
            gameState.enter(Gaming.self)
            let newScene = GameScene(fileNamed: "GameScene")
            newScene?.scaleMode = .fill
            let fade = SKTransition.crossFade(withDuration: 1.0)
            self.view?.presentScene(newScene!, transition: fade)
        default:
            break
        }
    }
    override func didMove(to view: SKView) {
        gameState.enter(Start.self)
    }
}
