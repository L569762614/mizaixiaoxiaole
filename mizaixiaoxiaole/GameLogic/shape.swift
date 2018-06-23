//
//  shape.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/6/3.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import UIKit
import SpriteKit
class shape: SKSpriteNode {
    var shapeType:Int = 0
    var shapeColor:Int = 0
    func addBrick(hex : [SKSpriteNode]){
        for everyhex in hex{
            self.addChild(everyhex)
        }
    }
    static func createShape(Shape:shape)->[SKSpriteNode]{
        var brick:[SKSpriteNode] = []
        let amount = Int.random(min: 1, max: 8)
        let brickColor = SKTexture(imageNamed: "six\(amount)")
        let brickNumber = Int.random(min: 1, max: 9)
        Shape.shapeType = brickNumber
        Shape.shapeColor = amount
        switch brickNumber {
        case 1:
            let one = SKSpriteNode(texture: brickColor)
            one.position = CGPoint.zero
            one.name = "brick"
            brick.append(one)
        case 2:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -48, y: 216)
            two.position = CGPoint(x: -96, y: 108)
            three.position = CGPoint(x: 0, y: 108)
            four.position = CGPoint(x: 96, y: 108)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 3:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -144, y: 108)
            two.position = CGPoint(x: -48, y: 108)
            three.position = CGPoint(x: 48, y: 108)
            four.position = CGPoint(x: 144, y: 108)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 4:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -48, y: 216)
            two.position = CGPoint(x: 48, y: 216)
            three.position = CGPoint(x: 0, y: 108)
            four.position = CGPoint(x: -48, y: 0)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 5:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: 48, y: 216)
            two.position = CGPoint(x: 0, y: 108)
            three.position = CGPoint(x: 96, y: 108)
            four.position = CGPoint(x: -48, y: 0)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 6:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -48, y: 216)
            two.position = CGPoint(x: 48, y: 216)
            three.position = CGPoint(x: 0,y: 108)
            four.position = CGPoint(x: -96, y: 108)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 7:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -48, y: 216)
            two.position = CGPoint(x: -96, y: 108)
            three.position = CGPoint(x: 48, y: 216)
            four.position = CGPoint(x: 96, y: 108)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 8:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -96, y: 216)
            two.position = CGPoint(x: 0, y: 216)
            three.position = CGPoint(x: 48, y: 108)
            four.position = CGPoint(x: 0, y: 0)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        case 9:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -96, y: 188)
            two.position = CGPoint(x: -48, y: 80)
            three.position = CGPoint(x: 0 , y: -28)
            four.position = CGPoint(x: 48,y: -136)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        default:
            let one = SKSpriteNode(texture: brickColor)
            let two = SKSpriteNode(texture: brickColor)
            let three = SKSpriteNode(texture: brickColor)
            let four = SKSpriteNode(texture: brickColor)
            one.position = CGPoint(x: -96, y: 216)
            two.position = CGPoint(x: 0, y: 216)
            three.position = CGPoint(x: 48, y: 108)
            four.position = CGPoint(x: 0, y: 0)
            one.name = "brick"
            two.name = "brick"
            three.name = "brick"
            four.name = "brick"
            brick.append(contentsOf: [one,two,three,four])
        }
        return brick
    }
}
