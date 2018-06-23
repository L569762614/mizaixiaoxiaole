//
//  hexagon.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/31.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
class hexagon: SKSpriteNode {
    var isput:Bool = false
    var topLeft:hexagon?
    var left:hexagon?
    var downLeft:hexagon?
    var topRight:hexagon?
    var right:hexagon?
    var downRight:hexagon?
    var topLeftPut:Bool = true
    var leftPut:Bool = true
    var downLeftPut:Bool = true
    var topRightPut:Bool = true
    var rightPut:Bool = true
    var downRightPut:Bool = true
}
