//
//  FunctionLibrary.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/29.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import SpriteKit
import GameplayKit
public extension Int {
    public static func random(n: Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }
    public static func random(min: Int, max: Int) -> Int {
        assert(min < max)
        return Int(arc4random_uniform(UInt32(max - min + 1))) + min
    }
}

