//
//  Gaming.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/29.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
class Gaming: GKState {
    unowned let scene:GameScene
    init(scene:SKScene) {
        self.scene = scene as!GameScene
        super.init()
    }
    override func didEnter(from previousState: GKState?) {
    }
}
