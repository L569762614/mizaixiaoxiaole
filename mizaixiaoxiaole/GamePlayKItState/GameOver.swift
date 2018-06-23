//
//  GameOver.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/6/22.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit
class GameOver: GKState {
    unowned let scene: GameOverScene
    init(scene:SKScene) {
        self.scene = scene as! GameOverScene
        super.init()
    }
    override func didEnter(from previousState: GKState?) {
    }
}
