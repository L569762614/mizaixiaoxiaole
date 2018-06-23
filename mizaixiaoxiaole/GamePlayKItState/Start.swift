//
//  Start.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/29.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import UIKit
import GameplayKit
import SpriteKit
class Start: GKState {
    unowned let scene:StartScene
    init(scene:SKScene) {
        self.scene = scene as!StartScene
        super.init()
    }
    override func didEnter(from previousState: GKState?) {
    }
}
