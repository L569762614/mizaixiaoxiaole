//
//  GameScene.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/28.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import SpriteKit
import GameplayKit
class GameScene: SKScene {
    lazy var gameState:GKStateMachine = GKStateMachine(states: [Gaming(scene:self),GameOver(scene:GameOverScene(fileNamed:"GameOverScene")!)])
    var hex1:hexagon!
    var hex2:hexagon!
    var hex3:hexagon!
    var hex4:hexagon!
    var hex5:hexagon!
    var hex6:hexagon!
    var hex7:hexagon!
    var hex8:hexagon!
    var hex9:hexagon!
    var hex10:hexagon!
    var hex11:hexagon!
    var hex12:hexagon!
    var hex13:hexagon!
    var hex14:hexagon!
    var hex15:hexagon!
    var hex16:hexagon!
    var hex17:hexagon!
    var hex18:hexagon!
    var hex19:hexagon!
    var hex20:hexagon!
    var hex21:hexagon!
    var hex22:hexagon!
    var hex23:hexagon!
    var hex24:hexagon!
    var hex25:hexagon!
    var hex26:hexagon!
    var hex27:hexagon!
    var hex28:hexagon!
    var hex29:hexagon!
    var hex30:hexagon!
    var hex31:hexagon!
    var hex32:hexagon!
    var hex33:hexagon!
    var hex34:hexagon!
    var hex35:hexagon!
    var hex36:hexagon!
    var hex37:hexagon!
    var hex38:hexagon!
    var hex39:hexagon!
    var hex40:hexagon!
    var hex41:hexagon!
    var hex42:hexagon!
    var hex43:hexagon!
    var hex44:hexagon!
    var hex45:hexagon!
    var hex46:hexagon!
    var hex47:hexagon!
    var hex48:hexagon!
    var hex49:hexagon!
    var hex50:hexagon!
    var hex51:hexagon!
    var hex52:hexagon!
    var hex53:hexagon!
    var hex54:hexagon!
    var hex55:hexagon!
    var hex56:hexagon!
    var hex57:hexagon!
    var hex58:hexagon!
    var hex59:hexagon!
    var hex60:hexagon!
    var hex61:hexagon!
    var hex62:hexagon!
    var hex63:hexagon!
    var hex64:hexagon!
    var hex65:hexagon!
    var hex66:hexagon!
    var hex67:hexagon!
    var hex68:hexagon!
    var hex69:hexagon!
    var hex70:hexagon!
    var hex71:hexagon!
    var hex72:hexagon!
    var hex73:hexagon!
    var hex74:hexagon!
    var hex75:hexagon!
    var hex76:hexagon!
    var hex77:hexagon!
    var hex78:hexagon!
    var hex79:hexagon!
    var hex80:hexagon!
    var one:shape!
    var two:shape!
    var three:shape!
    var firstHexagonArray:[SKSpriteNode] = []
    var secondHexagonArray:[SKSpriteNode] = []
    var thirdHexagonArray:[SKSpriteNode] = []
    var handleNode:shape?
    let pathArray1:[String] = []
    let pathArray2 = ["downLeft","right","right"]
    let pathArray3 = ["right","right","right"]
    let pathArray4 = ["right","downLeft","downLeft"]
    let pathArray5 = ["topRight","topRight","downRight"]
    let pathArray6 = ["right","downLeft","left"]
    let pathArray7 = ["topRight","right","downRight"]
    let pathArray8 = ["right","downRight","downLeft"]
    let pathArray9 = ["downRight","downRight","downRight"]
    var pathArray=[[String]]()//二维数组
    var compareArray:[String] = []
    var canPut:Bool = false
    var putTexture:SKTexture?
    var orginlLocation:CGPoint = CGPoint(x: 0, y: 0)
    var lastHex1:hexagon?
    var lastHex2:hexagon?
    var lastHex3:hexagon?
    var lastHex4:hexagon?
    var shapeName:String?
    var scoreNumber:Int?
    var score:SKLabelNode!
    let texture = SKTexture(imageNamed: "choose")
    let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
    func boomScore (){
        if hex1.isput == true {
            if hex2.isput == true{
                if hex3.isput == true{
                    if hex4.isput == true{
                        if hex5.isput == true{
                            let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                            let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                            let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                            let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                            let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                            removeEffect1.position = hex1.position
                            self.addChild(removeEffect1)
                            removeEffect2.position = hex2.position
                            self.addChild(removeEffect2)
                            removeEffect3.position = hex3.position
                            self.addChild(removeEffect3)
                            removeEffect4.position = hex4.position
                            self.addChild(removeEffect4)
                            removeEffect5.position = hex5.position
                            self.addChild(removeEffect5)
                            hex1.texture = texture
                            hex2.texture = texture
                            hex3.texture = texture
                            hex4.texture = texture
                            hex5.texture = texture
                            self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                                self.removeEffect1.removeFromParent()
                                self.removeEffect2.removeFromParent()
                                self.removeEffect3.removeFromParent()
                                self.removeEffect4.removeFromParent()
                                self.removeEffect5.removeFromParent()
                                }]))
                            hex1.isput = false
                            hex2.isput = false
                            hex3.isput = false
                            hex4.isput = false
                            hex5.isput = false
                            let fiveScore = 60
                            score.text = String(Int(score.text!)!+fiveScore)
                        }
                    }
                }
            }
        }
        if hex1.isput == true{
            if hex6.isput == true{
                if hex12.isput == true{
                    if hex19.isput == true{
                        if hex27.isput == true{
                            if hex36.isput == true{
                                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                removeEffect1.position = hex1.position
                                removeEffect2.position = hex6.position
                                removeEffect3.position = hex12.position
                                removeEffect4.position = hex19.position
                                removeEffect5.position = hex27.position
                                removeEffect6.position = hex36.position
                                self.addChild(removeEffect1)
                                self.addChild(removeEffect2)
                                self.addChild(removeEffect3)
                                self.addChild(removeEffect4)
                                self.addChild(removeEffect5)
                                self.addChild(removeEffect6)
                                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                                    self.removeEffect1.removeFromParent()
                                    self.removeEffect2.removeFromParent()
                                    self.removeEffect3.removeFromParent()
                                    self.removeEffect4.removeFromParent()
                                    self.removeEffect5.removeFromParent()
                                    self.removeEffect6.removeFromParent()
                                    }]))
                                hex1.texture = texture
                                hex6.texture = texture
                                hex12.texture = texture
                                hex19.texture = texture
                                hex27.texture = texture
                                hex36.texture = texture
                                hex1.isput = false
                                hex6.isput = false
                                hex12.isput = false
                                hex19.isput = false
                                hex27.isput = false
                                hex36.isput = false
                                let sixScore = 80
                                score.text = String(Int(score.text!)!+sixScore)
                            }
                        }
                    }
                }
            }
        }
        if hex1.isput == true {
            if hex7.isput == true{
                if hex14.isput == true{
                    if hex22.isput == true{
                        if hex31.isput == true{
                            if hex41.isput == true{
                                if hex51.isput == true{
                                    if hex60.isput == true{
                                        if hex68.isput == true{
                                            if hex75.isput == true{
                                                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                                                removeEffect1.position = hex1.position
                                                removeEffect2.position = hex7.position
                                                removeEffect3.position = hex14.position
                                                removeEffect4.position = hex22.position
                                                removeEffect5.position = hex31.position
                                                removeEffect6.position = hex41.position
                                                removeEffect7.position = hex51.position
                                                removeEffect8.position = hex60.position
                                                removeEffect9.position = hex68.position
                                                removeEffect10.position = hex75.position
                                                self.addChild(removeEffect1)
                                                self.addChild(removeEffect2)
                                                self.addChild(removeEffect3)
                                                self.addChild(removeEffect4)
                                                self.addChild(removeEffect5)
                                                self.addChild(removeEffect6)
                                                self.addChild(removeEffect7)
                                                self.addChild(removeEffect8)
                                                self.addChild(removeEffect9)
                                                self.addChild(removeEffect10)
                                                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                                                    self.removeEffect1.removeFromParent()
                                                    self.removeEffect2.removeFromParent()
                                                    self.removeEffect3.removeFromParent()
                                                    self.removeEffect4.removeFromParent()
                                                    self.removeEffect5.removeFromParent()
                                                    self.removeEffect6.removeFromParent()
                                                    self.removeEffect7.removeFromParent()
                                                    self.removeEffect8.removeFromParent()
                                                    self.removeEffect9.removeFromParent()
                                                    self.removeEffect10.removeFromParent()
                                                    }]))
                                                hex1.texture = texture
                                                hex7.texture = texture
                                                hex14.texture = texture
                                                hex22.texture = texture
                                                hex31.texture = texture
                                                hex41.texture = texture
                                                hex51.texture = texture
                                                hex60.texture = texture
                                                hex68.texture = texture
                                                hex75.texture = texture
                                                hex1.isput = false
                                                hex7.isput = false
                                                hex14.isput = false
                                                hex22.isput = false
                                                hex31.isput = false
                                                hex41.isput = false
                                                hex51.isput = false
                                                hex60.isput = false
                                                hex68.isput = false
                                                hex75.isput = false
                                                let tenScore = 150
                                                score.text = String(Int(score.text!)!+tenScore)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if hex6.isput == true {
            let hex1 = hex6.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex6.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    }]))
                hex6.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                let sixScore = 80
                score.text = String(Int(score.text!)!+sixScore)
                }
            }
        if hex12.isput == true {
            let hex1 = hex12.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex12.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    }]))
                hex12.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex12.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                let sevenScore = 90
                score.text = String(Int(score.text!)!+sevenScore)
            }
        }
        if hex19.isput == true {
            let hex1 = hex19.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            let hex7 = hex6?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex19.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    }]))
                hex19.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex19.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                let eightScore = 100
                score.text = String(Int(score.text!)!+eightScore)
            }
        }
        if hex27.isput == true {
            let hex1 = hex27.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            let hex7 = hex6?.right
            let hex8 = hex7?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex27.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    }]))
                hex27.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex27.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                let nineScore = 110
                score.text = String(Int(score.text!)!+nineScore)
            }
        }
        if hex36.isput == true {
            let hex1 = hex36.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            let hex7 = hex6?.right
            let hex8 = hex7?.right
            let hex9 = hex8?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true && hex9?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex36.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                removeEffect10.position = (hex9?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.addChild(removeEffect10)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    self.removeEffect10.removeFromParent()
                    }]))
                hex36.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex9?.texture = texture
                hex36.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                hex9?.isput = false
                let tenScore = 150
                score.text = String(Int(score.text!)!+tenScore)
            }
        }
        if hex46.isput == true {
            let hex1 = hex46.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            let hex7 = hex6?.right
            let hex8 = hex7?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex46.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    }]))
                hex46.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex46.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                let nineScore = 110
                score.text = String(Int(score.text!)!+nineScore)
            }
        }
        if hex55.isput == true {
            let hex1 = hex55.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            let hex7 = hex6?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex55.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    }]))
                hex55.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex55.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                let eightScore = 100
                score.text = String(Int(score.text!)!+eightScore)
            }
        }
        if hex63.isput == true {
            let hex1 = hex63.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            let hex6 = hex5?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex63.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    }]))
                hex63.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex63.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                let sevenScore = 90
                score.text = String(Int(score.text!)!+sevenScore)
            }
        }
        if hex70.isput == true {
            let hex1 = hex70.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            let hex5 = hex4?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex70.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    }]))
                hex70.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex70.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                let sixScore = 80
                score.text = String(Int(score.text!)!+sixScore)
            }
        }
        if hex76.isput == true {
            let hex1 = hex76.right
            let hex2 = hex1?.right
            let hex3 = hex2?.right
            let hex4 = hex3?.right
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true {
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex76.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    }]))
                hex76.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex76.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                let fiveScore = 60
                score.text = String(Int(score.text!)!+fiveScore)
            }
        }
        if hex46.isput == true {
            let hex1 = hex46.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex46.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    }]))
                hex46.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex46.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                let sevenScore = 90
                score.text = String(Int(score.text!)!+sevenScore)
            }
        }
        if hex55.isput == true {
            let hex1 = hex55.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            let hex7 = hex6?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex55.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    }]))
                hex55.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex55.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                let eightScore = 100
                score.text = String(Int(score.text!)!+eightScore)
            }
        }
        if hex63.isput == true {
            let hex1 = hex63.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            let hex7 = hex6?.topRight
            let hex8 = hex7?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex8?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex63.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    }]))
                hex63.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex63.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                let nineScore = 110
                score.text = String(Int(score.text!)!+nineScore)
            }
        }
        if hex70.isput == true {
            let hex1 = hex70.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            let hex7 = hex6?.topRight
            let hex8 = hex7?.topRight
            let hex9 = hex8?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true && hex9?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex70.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                removeEffect10.position = (hex9?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.addChild(removeEffect10)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    self.removeEffect10.removeFromParent()
                    }]))
                hex70.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex9?.texture = texture
                hex70.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                hex9?.isput = false
                let tenScore = 150
                score.text = String(Int(score.text!)!+tenScore)
            }
        }
        if hex76.isput == true {
            let hex1 = hex76.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            let hex7 = hex6?.topRight
            let hex8 = hex7?.topRight
            let hex9 = hex8?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true && hex9?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex76.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                removeEffect10.position = (hex9?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.addChild(removeEffect10)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    self.removeEffect10.removeFromParent()
                    }]))
                hex76.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex9?.texture = texture
                hex76.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                hex9?.isput = false
                let tenScore = 150
                score.text = String(Int(score.text!)!+tenScore)
            }
        }
        if hex77.isput == true {
            let hex1 = hex77.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            let hex7 = hex6?.topRight
            let hex8 = hex7?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex8?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex77.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    }]))
                hex77.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex77.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                let nineScore = 110
                score.text = String(Int(score.text!)!+nineScore)
            }
        }
        if hex78.isput == true {
            let hex1 = hex78.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            let hex7 = hex6?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex78.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    }]))
                hex78.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex78.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                let eightScore = 100
                score.text = String(Int(score.text!)!+eightScore)
            }
        }
        if hex79.isput == true {
            let hex1 = hex79.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            let hex6 = hex5?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex79.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    }]))
                hex79.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex79.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                let sevenScore = 90
                score.text = String(Int(score.text!)!+sevenScore)
            }
        }
        if hex80.isput == true {
            let hex1 = hex80.topRight
            let hex2 = hex1?.topRight
            let hex3 = hex2?.topRight
            let hex4 = hex3?.topRight
            let hex5 = hex4?.topRight
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex80.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    }]))
                hex80.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex80.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                let sixScore = 80
                score.text = String(Int(score.text!)!+sixScore)
            }
        }
        if hex76.isput == true {
            let hex1 = hex76.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex76.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    }]))
                hex76.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex76.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                let sixScore = 80
                score.text = String(Int(score.text!)!+sixScore)
            }
        }
        if hex77.isput == true {
            let hex1 = hex77.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex77.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    }]))
                hex77.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex77.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                let sevenScore = 90
                score.text = String(Int(score.text!)!+sevenScore)
            }
        }
        if hex78.isput == true {
            let hex1 = hex78.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            let hex7 = hex6?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex78.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    }]))
                hex78.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex78.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                let eightScore = 100
                score.text = String(Int(score.text!)!+eightScore)
            }
        }
        if hex79.isput == true {
            let hex1 = hex79.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            let hex7 = hex6?.topLeft
            let hex8 = hex7?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex8?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex79.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    }]))
                hex79.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex79.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                let nineScore = 110
                score.text = String(Int(score.text!)!+nineScore)
            }
        }
        if hex80.isput == true {
            let hex1 = hex80.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            let hex7 = hex6?.topLeft
            let hex8 = hex7?.topLeft
            let hex9 = hex8?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true && hex9?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex80.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                removeEffect10.position = (hex9?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.addChild(removeEffect10)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    self.removeEffect10.removeFromParent()
                    }]))
                hex80.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex9?.texture = texture
                hex80.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                hex9?.isput = false
                let tenScore = 150
                score.text = String(Int(score.text!)!+tenScore)
            }
        }
        if hex75.isput == true {
            let hex1 = hex75.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            let hex7 = hex6?.topLeft
            let hex8 = hex7?.topLeft
            let hex9 = hex8?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true && hex8?.isput == true && hex9?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect10 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex75.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                removeEffect10.position = (hex9?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.addChild(removeEffect10)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    self.removeEffect10.removeFromParent()
                    }]))
                hex75.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex9?.texture = texture
                hex75.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                hex9?.isput = false
                let tenScore = 150
                score.text = String(Int(score.text!)!+tenScore)
            }
        }
        if hex69.isput == true {
            let hex1 = hex69.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            let hex7 = hex6?.topLeft
            let hex8 = hex7?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex8?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect9 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex69.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                removeEffect9.position = (hex8?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.addChild(removeEffect9)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    self.removeEffect9.removeFromParent()
                    }]))
                hex69.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex8?.texture = texture
                hex69.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                hex8?.isput = false
                let nineScore = 110
                score.text = String(Int(score.text!)!+nineScore)
            }
        }
        if hex62.isput == true {
            let hex1 = hex62.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            let hex7 = hex6?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true && hex7?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect8 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex62.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                removeEffect8.position = (hex7?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.addChild(removeEffect8)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    self.removeEffect8.removeFromParent()
                    }]))
                hex62.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex7?.texture = texture
                hex62.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                hex7?.isput = false
                let eightScore = 100
                score.text = String(Int(score.text!)!+eightScore)
            }
        }
        if hex54.isput == true {
            let hex1 = hex54.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            let hex6 = hex5?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true && hex6?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect7 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex54.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                removeEffect7.position = (hex6?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.addChild(removeEffect7)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    self.removeEffect7.removeFromParent()
                    }]))
                hex54.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex6?.texture = texture
                hex54.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                hex6?.isput = false
                let sevenScore = 90
                score.text = String(Int(score.text!)!+sevenScore)
            }
        }
        if hex45.isput == true {
            let hex1 = hex45.topLeft
            let hex2 = hex1?.topLeft
            let hex3 = hex2?.topLeft
            let hex4 = hex3?.topLeft
            let hex5 = hex4?.topLeft
            if hex1?.isput == true && hex2?.isput == true && hex3?.isput == true && hex4?.isput == true && hex5?.isput == true{
                let removeEffect1 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect2 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect3 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect4 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect5 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                let removeEffect6 = SKEmitterNode(fileNamed: "removeEffect.sks")!
                removeEffect1.position = hex45.position
                removeEffect2.position = (hex1?.position)!
                removeEffect3.position = (hex2?.position)!
                removeEffect4.position = (hex3?.position)!
                removeEffect5.position = (hex4?.position)!
                removeEffect6.position = (hex5?.position)!
                self.addChild(removeEffect1)
                self.addChild(removeEffect2)
                self.addChild(removeEffect3)
                self.addChild(removeEffect4)
                self.addChild(removeEffect5)
                self.addChild(removeEffect6)
                self.run(SKAction.sequence([SKAction.wait(forDuration: 0.01),SKAction.run {
                    self.removeEffect1.removeFromParent()
                    self.removeEffect2.removeFromParent()
                    self.removeEffect3.removeFromParent()
                    self.removeEffect4.removeFromParent()
                    self.removeEffect5.removeFromParent()
                    self.removeEffect6.removeFromParent()
                    }]))
                hex45.texture = texture
                hex1?.texture = texture
                hex2?.texture = texture
                hex3?.texture = texture
                hex4?.texture = texture
                hex5?.texture = texture
                hex45.isput = false
                hex1?.isput = false
                hex2?.isput = false
                hex3?.isput = false
                hex4?.isput = false
                hex5?.isput = false
                let sixScore = 80
                score.text = String(Int(score.text!)!+sixScore)
            }
        }
    }
    func compare(shape1:shape,shape2:shape,shape3:shape){
        let path1 = pathArray[shape1.shapeType-1]
        let path2 = pathArray[shape2.shapeType-1]
        let path3 = pathArray[shape3.shapeType-1]
        var shapeOneCanPut:Bool = false
        var shapeTwoCanPut:Bool = false
        var shapeThreeCanPut:Bool = false
        let hexs:[hexagon] = [hex1,hex2,hex3,hex4,hex5,hex6,hex7,hex8,hex9,hex10,hex11,hex12,hex13,hex14,hex15,hex16,hex17,hex18,hex19,hex20,hex21,hex22,hex23,hex24,hex25,hex26,hex27,hex28,hex29,hex30,hex31,hex32,hex33,hex34,hex35,hex36,hex37,hex38,hex39,hex40,hex41,hex42,hex43,hex44,hex45,hex46,hex47,hex48,hex49,hex50,hex51,hex52,hex53,hex54,hex55,hex56,hex57,hex58,hex59,hex60,hex61,hex62,hex63,hex64,hex65,hex66,hex67,hex68,hex69,hex70,hex71,hex72,hex73,hex74,hex75,hex76,hex77,hex78,hex79,hex80]
        for hex:hexagon in hexs {
            switch path2{
            case []:
                if hex.isput == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["downLeft","right","right"]:
                let hex2 = hex.left
                let hex3 = hex.right
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topRightPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["right","right","right"]:
                let hex2 = hex.left
                let hex3 = hex.right
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex3?.rightPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["right","downLeft","downLeft"]:
                let hex2 = hex.topRight?.topRight
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["topRight","topRight","downRight"]:
                let hex2 = hex.topRight?.topRight
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["right","downLeft","left"]:
                let hex2 = hex.left?.topRight
                if hex.isput == false && hex.leftPut == false && hex2?.isput == false && hex2?.rightPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["topRight","right","downRight"]:
                let hex2 = hex.topRight?.right
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["right","downRight","downLeft"]:
                let hex2 = hex.topRight?.topLeft
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                    shapeTwoCanPut = true
                    break
                }
            case ["downRight","downRight","downRight"]:
                let hex2 = hex.topLeft
                let hex3 = hex.downRight
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topLeftPut == false{
                    shapeTwoCanPut = true
                    break
                }
            default:
                break
            }
        }
        for hex:hexagon in hexs {
            switch path1{
            case []:
                if hex.isput == false{
                    shapeOneCanPut = true
                    break
                }
            case ["downLeft","right","right"]:
                let hex2 = hex.left
                let hex3 = hex.right
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topRightPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["right","right","right"]:
                let hex2 = hex.left
                let hex3 = hex.right
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex3?.rightPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["right","downLeft","downLeft"]:
                let hex2 = hex.topRight?.topRight
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["topRight","topRight","downRight"]:
                let hex2 = hex.topRight?.topRight
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["right","downLeft","left"]:
                let hex2 = hex.left?.topRight
                if hex.isput == false && hex.leftPut == false && hex2?.isput == false && hex2?.rightPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["topRight","right","downRight"]:
                let hex2 = hex.topRight?.right
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["right","downRight","downLeft"]:
                let hex2 = hex.topRight?.topLeft
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                    shapeOneCanPut = true
                    break
                }
            case ["downRight","downRight","downRight"]:
                let hex2 = hex.topLeft
                let hex3 = hex.downRight
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topLeftPut == false{
                    shapeOneCanPut = true
                    break
                }
            default:
                break
            }
        }
        for hex:hexagon in hexs {
            switch path3{
            case []:
                if hex.isput == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["downLeft","right","right"]:
                let hex2 = hex.left
                let hex3 = hex.right
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topRightPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["right","right","right"]:
                let hex2 = hex.left
                let hex3 = hex.right
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex3?.rightPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["right","downLeft","downLeft"]:
                let hex2 = hex.topRight?.topRight
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["topRight","topRight","downRight"]:
                let hex2 = hex.topRight?.topRight
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["right","downLeft","left"]:
                let hex2 = hex.left?.topRight
                if hex.isput == false && hex.leftPut == false && hex2?.isput == false && hex2?.rightPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["topRight","right","downRight"]:
                let hex2 = hex.topRight?.right
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["right","downRight","downLeft"]:
                let hex2 = hex.topRight?.topLeft
                if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                    shapeThreeCanPut = true
                    break
                }
            case ["downRight","downRight","downRight"]:
                let hex2 = hex.topLeft
                let hex3 = hex.downRight
                if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topLeftPut == false{
                    shapeThreeCanPut = true
                    break
                }
            default:
                break
            }
        }
        if shapeOneCanPut == false && shapeTwoCanPut == false && shapeThreeCanPut == false{
                if Int(score.text!)!>bestScore(){
                setBestScore(bestScore: Int(score.text!)!)
                }
                gameState.enter(GameOver.self)
                let newScene = GameOverScene(fileNamed: "GameOverScene")
                newScene?.scaleMode = .fill
                let fade = SKTransition.crossFade(withDuration: 1.0)
                self.view?.presentScene(newScene!, transition: fade)
        }
    }
    func setBestScore(bestScore:Int){
        UserDefaults.standard.set(bestScore, forKey: "BestScore")
        UserDefaults.standard.synchronize()
    }
    func bestScore()->Int{
        return UserDefaults.standard.integer(forKey: "BestScore")
    }
    func getScore(number:Int){
        if number == 1{
            let onescore = 10
            score.text = String(Int(score.text!)!+onescore)
        }else{
            let fourScore = 40
            score.text = String(Int(score.text!)!+fourScore)
        }
    } 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = ((touches as NSSet).anyObject() as AnyObject)
        let location = touch.location(in: self)
        if let nodes = self.nodes(at: location) as? [SKSpriteNode]{
            for  sprite:SKSpriteNode in nodes {
            if sprite.name == "brick"{
                let shapeFrame = sprite.parent as! shape
                let number = shapeFrame.shapeType
                let color = shapeFrame.shapeColor
                scoreNumber = number
                shapeName = shapeFrame.name
                putTexture = SKTexture(imageNamed: "six\(color)")
                if shapeName! == "shape1"{
                    orginlLocation = CGPoint(x: -360, y: -710)
                }
                else if shapeName! == "shape2"{
                    orginlLocation = CGPoint(x: 0 , y: -710)
                }
                else if shapeName! ==  "shape3"{
                    orginlLocation = CGPoint(x: 360, y: -710)
                }
                compareArray = pathArray[number-1]
                handleNode = shapeFrame
                break
            }
        }
    }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = ((touches as NSSet).anyObject() as AnyObject)
        let location = touch.location(in: self)
        handleNode?.position = location
        //简直天秀！这个可选绑定机制
        if let nodes2 = self.nodes(at: location) as? [SKSpriteNode]{
        for sprite:SKSpriteNode in nodes2 {
            if let hex = sprite as? hexagon{
                    if(handleNode != nil){
                        switch compareArray{
                        case []:
                            if hex.isput == false{
                                if (lastHex1 != nil){
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    }
                                    hex.texture = putTexture
                                    hex.alpha = 0.5
                                    lastHex1 = hex
                                    canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                canPut = false
                            }
                        case ["downLeft","right","right"]:
                            let hex2 = hex.left
                            let hex3 = hex.right
                            if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topRightPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex3?.texture = putTexture
                                hex3?.alpha = 0.5
                                hex2?.topRight?.texture = putTexture
                                hex2?.topRight?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex2
                                lastHex3 = hex3
                                lastHex4 = hex2?.topRight
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["right","right","right"]:
                            let hex2 = hex.left
                            let hex3 = hex.right
                            if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex3?.rightPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex3?.texture = putTexture
                                hex3?.alpha = 0.5
                                hex3?.right?.texture = putTexture
                                hex3?.right?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex2
                                lastHex3 = hex3
                                lastHex4 = hex3?.right
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["right","downLeft","downLeft"]:
                            let hex2 = hex.topRight?.topRight
                            if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex.topRight?.texture = putTexture
                                hex.topRight?.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex2?.left?.texture = putTexture
                                hex2?.left?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex.topRight
                                lastHex3 = hex2
                                lastHex4 = hex2?.left
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["topRight","topRight","downRight"]:
                            let hex2 = hex.topRight?.topRight
                            if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.downRightPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex.topRight?.texture = putTexture
                                hex.topRight?.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex2?.downRight?.texture = putTexture
                                hex2?.downRight?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex.topRight
                                lastHex3 = hex2
                                lastHex4 = hex2?.downRight
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["right","downLeft","left"]:
                            let hex2 = hex.left?.topRight
                            if hex.isput == false && hex.leftPut == false && hex2?.isput == false && hex2?.rightPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex.left?.texture = putTexture
                                hex.left?.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex2?.right?.texture = putTexture
                                hex2?.right?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex.left
                                lastHex3 = hex2
                                lastHex4 = hex2?.right
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["topRight","right","downRight"]:
                            let hex1 = hex.left
                            let hex2 = hex1?.topRight
                            let hex3 = hex2?.right
                            let hex4 = hex3?.downRight
                            if hex1?.isput == false && hex2?.isput == false && hex3?.isput == false && hex4?.isput == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex1?.texture = putTexture
                                hex1?.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex3?.texture = putTexture
                                hex3?.alpha = 0.5
                                hex4?.texture = putTexture
                                hex4?.alpha = 0.5
                                lastHex1 = hex1
                                lastHex2 = hex2
                                lastHex3 = hex3
                                lastHex4 = hex4
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["right","downRight","downLeft"]:
                            let hex2 = hex.topRight?.topLeft
                            if hex.isput == false && hex.topRightPut == false && hex2?.isput == false && hex2?.leftPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex.topRight?.texture = putTexture
                                hex.topRight?.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex2?.left?.texture = putTexture
                                hex2?.left?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex.topRight
                                lastHex3 = hex2
                                lastHex4 = hex2?.left
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        case ["downRight","downRight","downRight"]:
                            let hex2 = hex.topLeft
                            let hex3 = hex.downRight
                            if hex.isput == false && hex2?.isput == false && hex3?.isput == false && hex2?.topLeftPut == false{
                                if lastHex1 != nil && lastHex2 != nil && lastHex3 != nil && lastHex4 != nil{
                                    lastHex1?.texture = SKTexture(imageNamed: "choose")
                                    lastHex1?.alpha = 1.0
                                    lastHex2?.texture = SKTexture(imageNamed: "choose")
                                    lastHex2?.alpha = 1.0
                                    lastHex3?.texture = SKTexture(imageNamed: "choose")
                                    lastHex3?.alpha = 1.0
                                    lastHex4?.texture = SKTexture(imageNamed: "choose")
                                    lastHex4?.alpha = 1.0
                                }
                                hex.texture = putTexture
                                hex.alpha = 0.5
                                hex2?.texture = putTexture
                                hex2?.alpha = 0.5
                                hex3?.texture = putTexture
                                hex3?.alpha = 0.5
                                hex2?.topLeft?.texture = putTexture
                                hex2?.topLeft?.alpha = 0.5
                                lastHex1 = hex
                                lastHex2 = hex2
                                lastHex3 = hex3
                                lastHex4 = hex2?.topLeft
                                canPut = true
                            }else{
                                lastHex1?.texture = SKTexture(imageNamed: "choose")
                                lastHex1?.alpha = 1.0
                                lastHex2?.texture = SKTexture(imageNamed: "choose")
                                lastHex2?.alpha = 1.0
                                lastHex3?.texture = SKTexture(imageNamed: "choose")
                                lastHex3?.alpha = 1.0
                                lastHex4?.texture = SKTexture(imageNamed: "choose")
                                lastHex4?.alpha = 1.0
                                canPut = false
                            }
                        default:
                            break
                    }
                }
            }
        }
    }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if canPut == false {
            let move = SKAction.move(to: orginlLocation, duration: 0.3)
            handleNode?.run(move)
            handleNode = nil
            compareArray = []
            putTexture = nil
            orginlLocation = CGPoint.zero
            lastHex1?.texture = SKTexture(imageNamed: "choose")
            lastHex1?.alpha = 1.0
            lastHex1 = nil
            lastHex2?.texture = SKTexture(imageNamed: "choose")
            lastHex2?.alpha = 1.0
            lastHex2 = nil
            lastHex3?.texture = SKTexture(imageNamed: "choose")
            lastHex3?.alpha = 1.0
            lastHex3 = nil
            lastHex4?.texture = SKTexture(imageNamed: "choose")
            lastHex4?.alpha = 1.0
            lastHex4 = nil
        }else if canPut == true{
            lastHex1?.alpha = 1.0
            lastHex1?.isput = true
            lastHex2?.alpha = 1.0
            lastHex2?.isput = true
            lastHex3?.alpha = 1.0
            lastHex3?.isput = true
            lastHex4?.alpha = 1.0
            lastHex4?.isput = true
            getScore(number: scoreNumber!)
            lastHex3 = nil
            lastHex4 = nil
            lastHex2 = nil
            lastHex1 = nil
            handleNode?.removeFromParent()
            handleNode = nil
            putTexture = nil
            compareArray = []
            canPut = false
            boomScore()
            if shapeName! == "shape1"{
                one.removeAllChildren()
                one.position = orginlLocation
                self.addChild(one)
                firstHexagonArray = shape.createShape(Shape:one)
                one.addBrick(hex:firstHexagonArray )
            }else if shapeName! == "shape2"{
                two.removeAllChildren()
                two.position = orginlLocation
                self.addChild(two)
                secondHexagonArray = shape.createShape(Shape: two)
                two.addBrick(hex: secondHexagonArray)
            }else if shapeName! == "shape3"{
                three.removeAllChildren()
                three.position = orginlLocation
                self.addChild(three)
                thirdHexagonArray = shape.createShape(Shape: three)
                three.addBrick(hex: thirdHexagonArray)
            }
            compare(shape1: one, shape2: two, shape3: three)
        }
    }
    override func didMove(to view:SKView){
        hex1 = childNode(withName: "1") as! hexagon
        hex2 = childNode(withName: "2") as! hexagon
        hex3 = childNode(withName: "3") as! hexagon
        hex4 = childNode(withName: "4") as! hexagon
        hex5 = childNode(withName: "5") as! hexagon
        hex6 = childNode(withName: "6") as! hexagon
        hex7 = childNode(withName: "7") as! hexagon
        hex8 = childNode(withName: "8") as! hexagon
        hex9 = childNode(withName: "9") as! hexagon
        hex10 = childNode(withName: "10") as! hexagon
        hex11 = childNode(withName: "11") as! hexagon
        hex12 = childNode(withName: "12") as! hexagon
        hex13 = childNode(withName: "13") as! hexagon
        hex14 = childNode(withName: "14") as! hexagon
        hex15 = childNode(withName: "15") as! hexagon
        hex16 = childNode(withName: "16") as! hexagon
        hex17 = childNode(withName: "17") as! hexagon
        hex18 = childNode(withName: "18") as! hexagon
        hex19 = childNode(withName: "19") as! hexagon
        hex20 = childNode(withName: "20") as! hexagon
        hex21 = childNode(withName: "21") as! hexagon
        hex22 = childNode(withName: "22") as! hexagon
        hex23 = childNode(withName: "23") as! hexagon
        hex24 = childNode(withName: "24") as! hexagon
        hex25 = childNode(withName: "25") as! hexagon
        hex26 = childNode(withName: "26") as! hexagon
        hex27 = childNode(withName: "27") as! hexagon
        hex28 = childNode(withName: "28") as! hexagon
        hex29 = childNode(withName: "29") as! hexagon
        hex30 = childNode(withName: "30") as! hexagon
        hex31 = childNode(withName: "31") as! hexagon
        hex32 = childNode(withName: "32") as! hexagon
        hex33 = childNode(withName: "33") as! hexagon
        hex34 = childNode(withName: "34") as! hexagon
        hex35 = childNode(withName: "35") as! hexagon
        hex36 = childNode(withName: "36") as! hexagon
        hex37 = childNode(withName: "37") as! hexagon
        hex38 = childNode(withName: "38") as! hexagon
        hex39 = childNode(withName: "39") as! hexagon
        hex40 = childNode(withName: "40") as! hexagon
        hex41 = childNode(withName: "41") as! hexagon
        hex42 = childNode(withName: "42") as! hexagon
        hex43 = childNode(withName: "43") as! hexagon
        hex44 = childNode(withName: "44") as! hexagon
        hex45 = childNode(withName: "45") as! hexagon
        hex46 = childNode(withName: "46") as! hexagon
        hex47 = childNode(withName: "47") as! hexagon
        hex48 = childNode(withName: "48") as! hexagon
        hex49 = childNode(withName: "49") as! hexagon
        hex50 = childNode(withName: "50") as! hexagon
        hex51 = childNode(withName: "51") as! hexagon
        hex52 = childNode(withName: "52") as! hexagon
        hex53 = childNode(withName: "53") as! hexagon
        hex54 = childNode(withName: "54") as! hexagon
        hex55 = childNode(withName: "55") as! hexagon
        hex56 = childNode(withName: "56") as! hexagon
        hex57 = childNode(withName: "57") as! hexagon
        hex58 = childNode(withName: "58") as! hexagon
        hex59 = childNode(withName: "59") as! hexagon
        hex60 = childNode(withName: "60") as! hexagon
        hex61 = childNode(withName: "61") as! hexagon
        hex62 = childNode(withName: "62") as! hexagon
        hex63 = childNode(withName: "63") as! hexagon
        hex64 = childNode(withName: "64") as! hexagon
        hex65 = childNode(withName: "65") as! hexagon
        hex66 = childNode(withName: "66") as! hexagon
        hex67 = childNode(withName: "67") as! hexagon
        hex68 = childNode(withName: "68") as! hexagon
        hex69 = childNode(withName: "69") as! hexagon
        hex70 = childNode(withName: "70") as! hexagon
        hex71 = childNode(withName: "71") as! hexagon
        hex72 = childNode(withName: "72") as! hexagon
        hex73 = childNode(withName: "73") as! hexagon
        hex74 = childNode(withName: "74") as! hexagon
        hex75 = childNode(withName: "75") as! hexagon
        hex76 = childNode(withName: "76") as! hexagon
        hex77 = childNode(withName: "77") as! hexagon
        hex78 = childNode(withName: "78") as! hexagon
        hex79 = childNode(withName: "79") as! hexagon
        hex80 = childNode(withName: "80") as! hexagon
        one = childNode(withName: "shape1") as! shape
        two = childNode(withName: "shape2") as! shape
        three = childNode(withName: "shape3") as! shape
        firstHexagonArray = shape.createShape(Shape:one)
        one.addBrick(hex: firstHexagonArray)
        one.isUserInteractionEnabled = false
        secondHexagonArray = shape.createShape(Shape:two)
        two.addBrick(hex:secondHexagonArray)
        two.isUserInteractionEnabled = false
        thirdHexagonArray = shape.createShape(Shape:three)
        three.addBrick(hex:thirdHexagonArray )
        three.isUserInteractionEnabled = false
        pathArray.append(contentsOf:[pathArray1,pathArray2,pathArray3,pathArray4,pathArray5,pathArray6,pathArray7,pathArray8,pathArray9])
        score = childNode(withName: "score") as! SKLabelNode
        score.isUserInteractionEnabled = false
    }
    override func update(_ currentTime: TimeInterval) {
        //hex1.incorrect
        hex1.topLeft = nil
        hex1.left = nil
        hex1.downLeft = hex6
        hex1.downLeftPut = hex6.isput
        hex1.topRight = nil
        hex1.right = hex2
        hex1.rightPut = hex2.isput
        hex1.downRight = hex7
        hex1.downRightPut = hex7.isput
        //hex2.incorrect
        hex2.topLeft = nil
        hex2.left = hex1
        hex2.leftPut = hex1.isput
        hex2.downLeft = hex7
        hex2.downLeftPut = hex7.isput
        hex2.topRight = nil
        hex2.right = hex3
        hex2.rightPut = hex3.isput
        hex2.downRight = hex8
        hex2.downRightPut = hex8.isput
        //hex3.incorrect
        hex3.topLeft = nil
        hex3.left = hex2
        hex3.leftPut = hex2.isput
        hex3.downLeft = hex8
        hex3.downLeftPut = hex8.isput
        hex3.topRight = nil
        hex3.right = hex4
        hex3.rightPut = hex4.isput
        hex3.downRight = hex9
        hex3.downRightPut = hex9.isput
        //hex4.incorrect
        hex4.topLeft = nil
        hex4.left = hex3
        hex4.leftPut = hex3.isput
        hex4.downLeft = hex9
        hex4.downLeftPut = hex9.isput
        hex4.topRight = nil
        hex4.right = hex5
        hex4.rightPut = hex5.isput
        hex4.downRight = hex10
        hex4.downRightPut = hex10.isput
        //hex5.incorrect
        hex5.topLeft = nil
        hex5.left = hex4
        hex5.leftPut = hex4.isput
        hex5.downLeft = hex10
        hex5.downLeftPut = hex10.isput
        hex5.topRight = nil
        hex5.right = nil
        hex5.downRight = hex11
        hex5.downRightPut = hex11.isput
        //hex6.incorrect
        hex6.topLeft = nil
        hex6.left = nil
        hex6.downLeft = hex12
        hex6.downLeftPut = hex12.isput
        hex6.topRight = hex1
        hex6.topRightPut = hex1.isput
        hex6.right = hex7
        hex6.rightPut = hex7.isput
        hex6.downRight = hex13
        hex6.downRightPut = hex13.isput
        //hex7.incorrect
        hex7.topLeft = hex1
        hex7.topLeftPut = hex1.isput
        hex7.left = hex6
        hex7.leftPut = hex6.isput
        hex7.downLeft = hex13
        hex7.downLeftPut = hex13.isput
        hex7.topRight = hex2
        hex7.topRightPut = hex2.isput
        hex7.right = hex8
        hex7.rightPut = hex8.isput
        hex7.downRight = hex14
        hex7.downRightPut = hex14.isput
        //hex8.incorrect
        hex8.topLeft = hex2
        hex8.topLeftPut = hex2.isput
        hex8.left = hex7
        hex8.leftPut = hex7.isput
        hex8.downLeft = hex14
        hex8.downLeftPut = hex14.isput
        hex8.topRight = hex3
        hex8.topRightPut = hex3.isput
        hex8.right = hex9
        hex8.rightPut = hex9.isput
        hex8.downRight = hex15
        hex8.downRightPut = hex15.isput
        //hex9.incorrect
        hex9.topLeft = hex3
        hex9.topLeftPut = hex3.isput
        hex9.left = hex8
        hex9.leftPut = hex8.isput
        hex9.downLeft = hex15
        hex9.downLeftPut = hex15.isput
        hex9.topRight = hex4
        hex9.topRightPut = hex4.isput
        hex9.right = hex10
        hex9.rightPut = hex10.isput
        hex9.downRight = hex16
        hex9.downRightPut = hex16.isput
        //hex10.incorrect
        hex10.topLeft = hex4
        hex10.topLeftPut = hex4.isput
        hex10.left = hex9
        hex10.leftPut = hex9.isput
        hex10.downLeft = hex16
        hex10.downLeftPut = hex16.isput
        hex10.topRight = hex5
        hex10.topRightPut = hex5.isput
        hex10.right = hex11
        hex10.rightPut = hex11.isput
        hex10.downRight = hex17
        hex10.downRightPut = hex17.isput
        //hex11.incorrect
        hex11.topLeft = hex5
        hex11.topLeftPut = hex5.isput
        hex11.left = hex10
        hex11.leftPut = hex10.isput
        hex11.downLeft = hex17
        hex11.downLeftPut = hex17.isput
        hex11.topRight = nil
        hex11.right = nil
        hex11.downRight = hex18
        hex11.downRightPut = hex18.isput
        //hex12.incorrect
        hex12.topLeft = nil
        hex12.left = nil
        hex12.downLeft = hex19
        hex12.downLeftPut = hex19.isput
        hex12.topRight = hex6
        hex12.topRightPut = hex6.isput
        hex12.right = hex13
        hex12.rightPut = hex13.isput
        hex12.downRight = hex20
        hex12.downRightPut = hex20.isput
        
        hex13.topLeft = hex6
        hex13.topLeftPut = hex6.isput
        hex13.left = hex12
        hex13.leftPut = hex12.isput
        hex13.downLeft = hex20
        hex13.downLeftPut = hex20.isput
        hex13.topRight = hex7
        hex13.topRightPut = hex7.isput
        hex13.right = hex14
        hex13.rightPut = hex14.isput
        hex13.downRight = hex21
        hex13.downRightPut = hex21.isput
        
        hex14.topLeft = hex7
        hex14.topLeftPut = hex7.isput
        hex14.left = hex13
        hex14.leftPut = hex13.isput
        hex14.downLeft = hex21
        hex14.downLeftPut = hex21.isput
        hex14.topRight = hex8
        hex14.topRightPut = hex8.isput
        hex14.right = hex15
        hex14.rightPut = hex15.isput
        hex14.downRight  = hex22
        hex14.downRightPut = hex22.isput
        
        hex15.topLeft = hex8
        hex15.topLeftPut = hex8.isput
        hex15.left = hex14
        hex15.leftPut = hex14.isput
        hex15.downLeft = hex22
        hex15.downLeftPut = hex22.isput
        hex15.topRight = hex9
        hex15.topRightPut = hex9.isput
        hex15.right = hex16
        hex15.rightPut = hex16.isput
        hex15.downRight = hex23
        hex15.downRightPut = hex23.isput
        
        hex16.topLeft = hex9
        hex16.topLeftPut = hex9.isput
        hex16.left = hex15
        hex16.leftPut = hex15.isput
        hex16.downLeft = hex23
        hex16.downLeftPut = hex23.isput
        hex16.topRight = hex10
        hex16.topRightPut = hex10.isput
        hex16.right = hex17
        hex16.rightPut = hex17.isput
        hex16.downRight = hex24
        hex16.downRightPut = hex24.isput
        
        hex17.topLeft = hex10
        hex17.topLeftPut = hex10.isput
        hex17.left = hex16
        hex17.leftPut = hex16.isput
        hex17.downLeft = hex24
        hex17.downLeftPut = hex24.isput
        hex17.topRight = hex11
        hex17.topRightPut = hex11.isput
        hex17.right = hex18
        hex17.rightPut = hex18.isput
        hex17.downRight = hex25
        hex17.downRightPut = hex25.isput
        
        hex18.topLeft = hex11
        hex18.topLeftPut = hex11.isput
        hex18.left = hex17
        hex18.leftPut = hex17.isput
        hex18.downLeft = hex25
        hex18.downLeftPut = hex25.isput
        hex18.topRight = nil
        hex18.right = nil
        hex18.downRight = hex26
        hex18.downRightPut = hex26.isput
        
        hex19.topLeft = nil
        hex19.left = nil
        hex19.downLeft = hex27
        hex19.downLeftPut = hex27.isput
        hex19.topRight = hex12
        hex19.topRightPut = hex12.isput
        hex19.right = hex20
        hex19.rightPut = hex20.isput
        hex19.downRight = hex28
        hex19.downRightPut = hex28.isput
        
        hex20.topLeft = hex12
        hex20.topLeftPut = hex12.isput
        hex20.left = hex19
        hex20.leftPut = hex19.isput
        hex20.downLeft = hex28
        hex20.downLeftPut = hex28.isput
        hex20.topRight = hex13
        hex20.topRightPut = hex13.isput
        hex20.right = hex21
        hex20.rightPut = hex21.isput
        hex20.downRight = hex29
        hex20.downRightPut = hex29.isput
        
        hex21.topLeft = hex13
        hex21.topLeftPut = hex13.isput
        hex21.left = hex20
        hex21.leftPut = hex20.isput
        hex21.downLeft = hex29
        hex21.downLeftPut = hex29.isput
        hex21.topRight = hex14
        hex21.topRightPut = hex14.isput
        hex21.right = hex22
        hex21.rightPut = hex22.isput
        hex21.downRight = hex30
        hex21.downRightPut = hex30.isput
        
        hex22.topLeft = hex14
        hex22.topLeftPut = hex14.isput
        hex22.left = hex21
        hex22.leftPut = hex21.isput
        hex22.downLeft = hex30
        hex22.downLeftPut = hex30.isput
        hex22.topRight = hex15
        hex22.topRightPut = hex15.isput
        hex22.right = hex23
        hex22.rightPut = hex23.isput
        hex22.downRight = hex31
        hex22.downRightPut = hex31.isput
        
        hex23.topLeft = hex15
        hex23.topLeftPut = hex15.isput
        hex23.left = hex22
        hex23.leftPut = hex22.isput
        hex23.downLeft = hex31
        hex23.downLeftPut = hex31.isput
        hex23.topRight = hex16
        hex23.topRightPut = hex16.isput
        hex23.right = hex24
        hex23.rightPut = hex24.isput
        hex23.downRight = hex32
        hex23.downRightPut = hex32.isput
        
        hex24.topLeft = hex16
        hex24.topLeftPut = hex16.isput
        hex24.left = hex23
        hex24.leftPut = hex23.isput
        hex24.downLeft = hex32
        hex24.downLeftPut = hex32.isput
        hex24.topRight = hex17
        hex24.topRightPut = hex17.isput
        hex24.right = hex25
        hex24.rightPut = hex25.isput
        hex24.downRight = hex33
        hex24.downRightPut = hex33.isput
        
        hex25.topLeft = hex17
        hex25.topLeftPut = hex17.isput
        hex25.left = hex24
        hex25.leftPut = hex24.isput
        hex25.downLeft = hex33
        hex25.downLeftPut = hex33.isput
        hex25.topRight = hex18
        hex25.topRightPut = hex18.isput
        hex25.right = hex26
        hex25.rightPut = hex26.isput
        hex25.downRight = hex34
        hex25.downRightPut = hex34.isput
        
        hex26.topLeft = hex18
        hex26.topLeftPut = hex18.isput
        hex26.left = hex25
        hex26.leftPut = hex25.isput
        hex26.downLeft = hex34
        hex26.downLeftPut = hex34.isput
        hex26.topRight = nil
        hex26.right = nil
        hex26.downRight = hex35
        hex26.downRightPut = hex35.isput
        
        hex27.topLeft = nil
        hex27.left = nil
        hex27.downLeft = hex36
        hex27.downLeftPut = hex36.isput
        hex27.topRight = hex19
        hex27.topRightPut = hex19.isput
        hex27.right = hex28
        hex27.rightPut = hex28.isput
        hex27.downRight = hex37
        hex27.downRightPut = hex37.isput
        
        hex28.topLeft = hex19
        hex28.topLeftPut = hex19.isput
        hex28.left = hex27
        hex28.leftPut = hex27.isput
        hex28.downLeft = hex37
        hex28.downLeftPut = hex37.isput
        hex28.topRight = hex20
        hex28.topRightPut = hex20.isput
        hex28.right = hex29
        hex28.rightPut = hex29.isput
        hex28.downRight = hex38
        hex28.downRightPut = hex38.isput
        
        hex29.topLeft = hex20
        hex29.topLeftPut = hex20.isput
        hex29.left = hex28
        hex29.leftPut = hex28.isput
        hex29.downLeft = hex38
        hex29.downLeftPut = hex38.isput
        hex29.topRight = hex21
        hex29.topRightPut = hex21.isput
        hex29.right = hex30
        hex29.rightPut = hex30.isput
        hex29.downRight = hex39
        hex29.downRightPut = hex39.isput
        
        hex30.topLeft = hex21
        hex30.topLeftPut = hex21.isput
        hex30.left = hex29
        hex30.leftPut = hex29.isput
        hex30.downLeft = hex39
        hex30.downLeftPut = hex39.isput
        hex30.topRight = hex22
        hex30.topRightPut = hex22.isput
        hex30.right = hex31
        hex30.rightPut = hex31.isput
        hex30.downRight = hex40
        hex30.downRightPut = hex40.isput
        
        hex31.topLeft = hex22
        hex31.topLeftPut = hex22.isput
        hex31.left = hex30
        hex31.leftPut = hex30.isput
        hex31.downLeft = hex40
        hex31.downLeftPut = hex40.isput
        hex31.topRight = hex23
        hex31.topRightPut = hex23.isput
        hex31.right = hex32
        hex31.rightPut = hex32.isput
        hex31.downRight = hex41
        hex31.downRightPut = hex41.isput
        
        hex32.topLeft = hex23
        hex32.topLeftPut = hex23.isput
        hex32.left = hex31
        hex32.leftPut = hex31.isput
        hex32.downLeft = hex41
        hex32.downLeftPut = hex41.isput
        hex32.topRight = hex24
        hex32.topRightPut = hex24.isput
        hex32.right = hex33
        hex32.rightPut = hex33.isput
        hex32.downRight = hex42
        hex32.downRightPut = hex42.isput
        
        hex33.topLeft = hex24
        hex33.topLeftPut = hex24.isput
        hex33.left = hex32
        hex33.leftPut = hex32.isput
        hex33.downLeft = hex42
        hex33.downLeftPut = hex42.isput
        hex33.topRight = hex25
        hex33.topRightPut = hex25.isput
        hex33.right = hex34
        hex33.rightPut = hex34.isput
        hex33.downRight = hex43
        hex33.downRightPut = hex43.isput
        
        hex34.topLeft = hex25
        hex34.topLeftPut = hex25.isput
        hex34.left = hex33
        hex34.leftPut = hex33.isput
        hex34.downLeft = hex43
        hex34.downLeftPut = hex43.isput
        hex34.topRight = hex26
        hex34.topRightPut = hex26.isput
        hex34.right = hex35
        hex34.rightPut = hex35.isput
        hex34.downRight = hex44
        hex34.downRightPut = hex44.isput
        
        hex35.topLeft = hex26
        hex35.topLeftPut = hex26.isput
        hex35.left = hex34
        hex35.leftPut = hex34.isput
        hex35.downLeft = hex44
        hex35.downLeftPut = hex44.isput
        hex35.topRight = nil
        hex35.right = nil
        hex35.downRight = hex45
        hex35.downRightPut = hex45.isput
        
        hex36.topLeft = nil
        hex36.left = nil
        hex36.downLeft = nil
        hex36.topRight = hex27
        hex36.topRightPut = hex27.isput
        hex36.right = hex37
        hex36.rightPut = hex37.isput
        hex36.downRight = hex46
        hex36.downRightPut = hex46.isput
        
        hex37.topLeft = hex27
        hex37.topLeftPut = hex27.isput
        hex37.left = hex36
        hex37.leftPut = hex36.isput
        hex37.downLeft = hex46
        hex37.downLeftPut = hex46.isput
        hex37.topRight = hex28
        hex37.topRightPut = hex28.isput
        hex37.right = hex38
        hex37.rightPut = hex38.isput
        hex37.downRight = hex47
        hex37.downRightPut = hex47.isput
        
        hex38.topLeft = hex28
        hex38.topLeftPut = hex28.isput
        hex38.left = hex37
        hex38.leftPut = hex37.isput
        hex38.downLeft = hex47
        hex38.downLeftPut = hex47.isput
        hex38.topRight = hex29
        hex38.topRightPut = hex29.isput
        hex38.right = hex39
        hex38.rightPut = hex39.isput
        hex38.downRight = hex48
        hex38.downRightPut = hex48.isput
        
        hex39.topLeft = hex29
        hex39.topLeftPut = hex29.isput
        hex39.left = hex38
        hex39.leftPut = hex38.isput
        hex39.downLeft = hex48
        hex39.downLeftPut = hex48.isput
        hex39.topRight = hex30
        hex39.topRightPut = hex30.isput
        hex39.right = hex40
        hex39.rightPut = hex40.isput
        hex39.downRight = hex49
        hex39.downRightPut = hex49.isput
        
        hex40.topLeft = hex30
        hex40.topLeftPut = hex30.isput
        hex40.left = hex39
        hex40.leftPut = hex39.isput
        hex40.downLeft = hex49
        hex40.downLeftPut = hex49.isput
        hex40.topRight = hex31
        hex40.topRightPut = hex31.isput
        hex40.right = hex41
        hex40.rightPut = hex41.isput
        hex40.downRight = hex50
        hex40.downRightPut = hex50.isput
        
        hex41.topLeft = hex31
        hex41.topLeftPut = hex31.isput
        hex41.left = hex40
        hex41.leftPut = hex40.isput
        hex41.downLeft = hex50
        hex41.downLeftPut = hex50.isput
        hex41.topRight = hex32
        hex41.topRightPut = hex32.isput
        hex41.right = hex42
        hex41.rightPut = hex42.isput
        hex41.downRight = hex51
        hex41.downRightPut = hex51.isput
        
        hex42.topLeft = hex32
        hex42.topLeftPut = hex32.isput
        hex42.left = hex41
        hex42.leftPut = hex41.isput
        hex42.downLeft = hex51
        hex42.downLeftPut = hex51.isput
        hex42.topRight = hex33
        hex42.topRightPut = hex33.isput
        hex42.right = hex43
        hex42.rightPut = hex43.isput
        hex42.downRight = hex52
        hex42.downRightPut = hex52.isput
        
        hex43.topLeft = hex33
        hex43.topLeftPut = hex33.isput
        hex43.left = hex42
        hex43.leftPut = hex42.isput
        hex43.downLeft = hex52
        hex43.downLeftPut = hex52.isput
        hex43.topRight = hex34
        hex43.topRightPut = hex34.isput
        hex43.right = hex44
        hex43.rightPut = hex44.isput
        hex43.downRight = hex53
        hex43.downRightPut = hex53.isput
        
        hex44.topLeft = hex34
        hex44.topLeftPut = hex34.isput
        hex44.left = hex43
        hex44.leftPut = hex43.isput
        hex44.downLeft = hex53
        hex44.downLeftPut = hex53.isput
        hex44.topRight = hex35
        hex44.topRightPut = hex35.isput
        hex44.right = hex45
        hex44.rightPut = hex45.isput
        hex44.downRight = hex54
        hex44.downRightPut = hex54.isput
        
        hex45.topLeft = hex35
        hex45.topLeftPut = hex35.isput
        hex45.left = hex44
        hex45.leftPut = hex44.isput
        hex45.downLeft = hex54
        hex45.downLeftPut = hex54.isput
        hex45.topRight = nil
        hex45.right = nil
        hex45.downRight = nil
        
        hex46.topLeft = hex36
        hex46.topLeftPut = hex36.isput
        hex46.left = nil
        hex46.downLeft = nil
        hex46.topRight = hex37
        hex46.topRightPut = hex37.isput
        hex46.right = hex47
        hex46.rightPut = hex47.isput
        hex46.downRight = hex55
        hex46.downRightPut = hex55.isput
        
        hex47.topLeft = hex37
        hex47.topLeftPut = hex37.isput
        hex47.left = hex46
        hex47.leftPut = hex46.isput
        hex47.downLeft = hex55
        hex47.downLeftPut = hex55.isput
        hex47.topRight = hex38
        hex47.topRightPut = hex38.isput
        hex47.right = hex48
        hex47.rightPut = hex48.isput
        hex47.downRight = hex56
        hex47.downRightPut = hex56.isput
        
        hex48.topLeft = hex38
        hex48.topLeftPut = hex38.isput
        hex48.left = hex47
        hex48.leftPut = hex47.isput
        hex48.downLeft = hex56
        hex48.downLeftPut = hex56.isput
        hex48.topRight = hex39
        hex48.topRightPut = hex39.isput
        hex48.right = hex49
        hex48.rightPut = hex49.isput
        hex48.downRight = hex57
        hex48.downRightPut = hex57.isput
        
        hex49.topLeft = hex39
        hex49.topLeftPut = hex39.isput
        hex49.left = hex48
        hex49.leftPut = hex48.isput
        hex49.downLeft = hex57
        hex49.downLeftPut = hex57.isput
        hex49.topRight = hex40
        hex49.topRightPut = hex40.isput
        hex49.right = hex50
        hex49.rightPut = hex50.isput
        hex49.downRight = hex58
        hex49.downRightPut = hex58.isput
        
        hex50.topLeft = hex40
        hex50.topLeftPut = hex40.isput
        hex50.left = hex49
        hex50.leftPut = hex49.isput
        hex50.downLeft = hex58
        hex50.downLeftPut = hex58.isput
        hex50.topRight = hex41
        hex50.topRightPut = hex41.isput
        hex50.right = hex51
        hex50.rightPut = hex51.isput
        hex50.downRight = hex59
        hex50.downRightPut = hex59.isput
        
        hex51.topLeft = hex41
        hex51.topLeftPut = hex41.isput
        hex51.left = hex50
        hex51.leftPut = hex50.isput
        hex51.downLeft = hex59
        hex51.downLeftPut = hex59.isput
        hex51.topRight = hex42
        hex51.topRightPut = hex42.isput
        hex51.right = hex52
        hex51.rightPut = hex52.isput
        hex51.downRight = hex60
        hex51.downRightPut = hex60.isput
        
        hex52.topLeft = hex42
        hex52.topLeftPut = hex42.isput
        hex52.left = hex51
        hex52.leftPut = hex51.isput
        hex52.downLeft = hex60
        hex52.downLeftPut = hex60.isput
        hex52.topRight = hex43
        hex52.topRightPut = hex43.isput
        hex52.right = hex53
        hex52.rightPut = hex53.isput
        hex52.downRight = hex61
        hex52.downRightPut = hex61.isput
        
        hex53.topLeft = hex43
        hex53.topLeftPut = hex43.isput
        hex53.left = hex52
        hex53.leftPut = hex52.isput
        hex53.downLeft = hex61
        hex53.downLeftPut = hex61.isput
        hex53.topRight = hex44
        hex53.topRightPut = hex44.isput
        hex53.right = hex54
        hex53.rightPut = hex54.isput
        hex53.downRight = hex62
        hex53.downRightPut = hex62.isput
        
        hex54.topLeft = hex44
        hex54.topLeftPut = hex44.isput
        hex54.left = hex53
        hex54.leftPut = hex53.isput
        hex54.downLeft = hex62
        hex54.downLeftPut = hex62.isput
        hex54.topRight = hex45
        hex54.topRightPut = hex45.isput
        hex54.right = nil
        hex54.downRight = nil
        
        hex55.topLeft = hex46
        hex55.topLeftPut = hex46.isput
        hex55.left = nil
        hex55.downLeft = nil
        hex55.topRight = hex47
        hex55.topRightPut = hex47.isput
        hex55.right = hex56
        hex55.rightPut = hex56.isput
        hex55.downRight = hex63
        hex55.downRightPut = hex63.isput
        
        hex56.topLeft = hex47
        hex56.topLeftPut = hex47.isput
        hex56.left = hex55
        hex56.leftPut = hex55.isput
        hex56.downLeft = hex63
        hex56.downLeftPut = hex63.isput
        hex56.topRight = hex48
        hex56.topRightPut = hex48.isput
        hex56.right = hex57
        hex56.rightPut = hex57.isput
        hex56.downRight = hex64
        hex56.downRightPut = hex64.isput
        
        hex57.topLeft = hex48
        hex57.topLeftPut = hex48.isput
        hex57.left = hex56
        hex57.leftPut = hex56.isput
        hex57.downLeft = hex64
        hex57.downLeftPut = hex64.isput
        hex57.topRight = hex49
        hex57.topRightPut = hex49.isput
        hex57.right = hex58
        hex57.rightPut = hex58.isput
        hex57.downRight = hex65
        hex57.downRightPut = hex65.isput
        
        hex58.topLeft = hex49
        hex58.topLeftPut = hex49.isput
        hex58.left = hex57
        hex58.leftPut = hex57.isput
        hex58.downLeft = hex65
        hex58.downLeftPut = hex65.isput
        hex58.topRight = hex50
        hex58.topRightPut = hex50.isput
        hex58.right = hex59
        hex58.rightPut = hex59.isput
        hex58.downRight = hex66
        hex58.downRightPut = hex66.isput
        
        hex59.topLeft = hex50
        hex59.topLeftPut = hex50.isput
        hex59.left = hex58
        hex59.leftPut = hex58.isput
        hex59.downLeft = hex66
        hex59.downLeftPut = hex66.isput
        hex59.topRight = hex51
        hex59.topRightPut = hex51.isput
        hex59.right = hex60
        hex59.rightPut = hex60.isput
        hex59.downRight = hex67
        hex59.downRightPut = hex67.isput
        
        hex60.topLeft = hex51
        hex60.topLeftPut = hex51.isput
        hex60.left = hex59
        hex60.leftPut = hex59.isput
        hex60.downLeft = hex67
        hex60.downLeftPut = hex67.isput
        hex60.topRight = hex52
        hex60.topRightPut = hex52.isput
        hex60.right = hex61
        hex60.rightPut = hex61.isput
        hex60.downRight = hex68
        hex60.downRightPut = hex68.isput
        
        hex61.topLeft = hex52
        hex61.topLeftPut = hex52.isput
        hex61.left = hex60
        hex61.leftPut = hex60.isput
        hex61.downLeft = hex68
        hex61.downLeftPut = hex68.isput
        hex61.topRight = hex53
        hex61.topRightPut = hex53.isput
        hex61.right = hex62
        hex61.rightPut = hex62.isput
        hex61.downRight = hex69
        hex61.downRightPut = hex69.isput
        
        hex62.topLeft = hex53
        hex62.topLeftPut = hex53.isput
        hex62.left = hex61
        hex62.leftPut = hex61.isput
        hex62.downLeft = hex69
        hex62.downLeftPut = hex69.isput
        hex62.topRight = hex54
        hex62.topRightPut = hex54.isput
        hex62.right = nil
        hex62.downRight = nil
        
        hex63.topLeft = hex55
        hex63.topLeftPut = hex55.isput
        hex63.left = nil
        hex63.downLeft = nil
        hex63.topRight = hex56
        hex63.topRightPut = hex56.isput
        hex63.right = hex64
        hex63.rightPut = hex64.isput
        hex63.downRight = hex70
        hex63.downRightPut = hex70.isput
        
        hex64.topLeft = hex56
        hex64.topLeftPut = hex56.isput
        hex64.left = hex63
        hex64.leftPut = hex63.isput
        hex64.downLeft = hex70
        hex64.downLeftPut = hex70.isput
        hex64.topRight = hex57
        hex64.topRightPut = hex57.isput
        hex64.right = hex65
        hex64.rightPut = hex65.isput
        hex64.downRight = hex71
        hex64.downRightPut = hex71.isput
        
        hex65.topLeft = hex57
        hex65.topLeftPut = hex57.isput
        hex65.left = hex64
        hex65.leftPut = hex64.isput
        hex65.downLeft = hex71
        hex65.downLeftPut = hex71.isput
        hex65.topRight = hex58
        hex65.topRightPut = hex58.isput
        hex65.right = hex66
        hex65.rightPut = hex66.isput
        hex65.downRight = hex72
        hex65.downRightPut = hex72.isput
        
        hex66.topLeft = hex58
        hex66.topLeftPut = hex58.isput
        hex66.left = hex65
        hex66.leftPut = hex65.isput
        hex66.downLeft = hex72
        hex66.downLeftPut = hex72.isput
        hex66.topRight = hex59
        hex66.topRightPut = hex59.isput
        hex66.right = hex67
        hex66.rightPut = hex67.isput
        hex66.downRight = hex73
        hex66.downRightPut = hex73.isput
        
        hex67.topLeft = hex59
        hex67.topLeftPut = hex59.isput
        hex67.left = hex66
        hex67.leftPut = hex66.isput
        hex67.downLeft = hex73
        hex67.downLeftPut = hex73.isput
        hex67.topRight = hex60
        hex67.topRightPut = hex60.isput
        hex67.right = hex68
        hex67.rightPut = hex68.isput
        hex67.downRight = hex74
        hex67.downRightPut = hex74.isput
        
        hex68.topLeft = hex60
        hex68.topLeftPut = hex60.isput
        hex68.left = hex67
        hex68.leftPut = hex67.isput
        hex68.downLeft = hex74
        hex68.downLeftPut = hex74.isput
        hex68.topRight = hex61
        hex68.topRightPut = hex61.isput
        hex68.right = hex69
        hex68.rightPut = hex69.isput
        hex68.downRight = hex75
        hex68.downRightPut = hex75.isput
        
        hex69.topLeft = hex61
        hex69.topLeftPut = hex61.isput
        hex69.left = hex68
        hex69.leftPut = hex68.isput
        hex69.downLeft = hex75
        hex69.downLeftPut = hex75.isput
        hex69.topRight = hex62
        hex69.topRightPut = hex62.isput
        hex69.right = nil
        hex69.downRight = nil
        
        hex70.topLeft = hex63
        hex70.topLeftPut = hex63.isput
        hex70.left = nil
        hex70.downLeft = nil
        hex70.topRight = hex64
        hex70.topRightPut = hex64.isput
        hex70.right = hex71
        hex70.rightPut = hex71.isput
        hex70.downRight = hex76
        hex70.downRightPut = hex76.isput
        
        hex71.topLeft = hex64
        hex71.topLeftPut = hex64.isput
        hex71.left = hex70
        hex71.leftPut = hex70.isput
        hex71.downLeft = hex76
        hex71.downLeftPut = hex76.isput
        hex71.topRight = hex65
        hex71.topRightPut = hex65.isput
        hex71.right = hex72
        hex71.rightPut = hex72.isput
        hex71.downRight = hex77
        hex71.downRightPut = hex77.isput
        
        hex72.topLeft = hex65
        hex72.topLeftPut = hex65.isput
        hex72.left = hex71
        hex72.leftPut = hex71.isput
        hex72.downLeft = hex77
        hex72.downLeftPut = hex77.isput
        hex72.topRight = hex66
        hex72.topRightPut = hex66.isput
        hex72.right = hex73
        hex72.rightPut = hex73.isput
        hex72.downRight = hex78
        hex72.downRightPut = hex78.isput
        
        hex73.topLeft = hex66
        hex73.topLeftPut = hex66.isput
        hex73.left = hex72
        hex73.leftPut = hex72.isput
        hex73.downLeft = hex78
        hex73.downLeftPut = hex78.isput
        hex73.topRight = hex67
        hex73.topRightPut = hex67.isput
        hex73.right = hex74
        hex73.rightPut = hex74.isput
        hex73.downRight = hex79
        hex73.downRightPut = hex79.isput
        
        hex74.topLeft = hex67
        hex74.topLeftPut = hex67.isput
        hex74.left = hex73
        hex74.leftPut = hex73.isput
        hex74.downLeft = hex79
        hex74.downLeftPut = hex79.isput
        hex74.topRight = hex68
        hex74.topRightPut = hex68.isput
        hex74.right = hex75
        hex74.rightPut = hex75.isput
        hex74.downRight = hex80
        hex74.downRightPut = hex80.isput
        
        hex75.topLeft = hex68
        hex75.topLeftPut = hex68.isput
        hex75.left = hex74
        hex75.leftPut = hex74.isput
        hex75.downLeft = hex80
        hex75.downLeftPut = hex80.isput
        hex75.topRight = hex69
        hex75.topRightPut = hex69.isput
        hex75.right = nil
        hex75.downRight = nil
        
        hex76.topLeft = hex70
        hex76.topLeftPut = hex70.isput
        hex76.left = nil
        hex76.downLeft = nil
        hex76.topRight = hex71
        hex76.topRightPut = hex71.isput
        hex76.right = hex77
        hex76.rightPut = hex77.isput
        hex76.downRight = nil
        
        hex77.topLeft = hex71
        hex77.topLeftPut = hex71.isput
        hex77.left = hex76
        hex77.leftPut = hex76.isput
        hex77.downLeft = nil
        hex77.topRight = hex72
        hex77.topRightPut = hex72.isput
        hex77.right = hex78
        hex77.rightPut = hex78.isput
        hex77.downRight = nil
        
        hex78.topLeft = hex72
        hex78.topLeftPut = hex72.isput
        hex78.left = hex77
        hex78.leftPut = hex77.isput
        hex78.downLeft = nil
        hex78.topRight = hex73
        hex78.topRightPut = hex73.isput
        hex78.right = hex79
        hex78.rightPut = hex79.isput
        hex78.downRight = nil
        
        hex79.topLeft = hex73
        hex79.topLeftPut = hex73.isput
        hex79.left = hex78
        hex79.leftPut = hex78.isput
        hex79.downLeft = nil
        hex79.topRight = hex74
        hex79.topRightPut = hex74.isput
        hex79.right = hex80
        hex79.rightPut = hex80.isput
        hex79.downRight = nil
        
        hex80.topLeft = hex74
        hex80.topLeftPut = hex74.isput
        hex80.left = hex79
        hex80.leftPut = hex79.isput
        hex80.downLeft = nil
        hex80.topRight = hex75
        hex80.topRightPut = hex75.isput
        hex80.right = nil
        hex80.downRight = nil
    }
}
