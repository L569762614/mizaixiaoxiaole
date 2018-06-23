//
//  GameViewController.swift
//  mizaixiaoxiaole
//
//  Created by 傅泽宇 on 2018/5/28.
//  Copyright © 2018年 傅泽宇. All rights reserved.
//

import UIKit
import SpriteKit
class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 3.0)
        if let startscene = StartScene(fileNamed: "StartScene") {
            startscene.scaleMode = .fill
            let skView = self.view as! SKView
            skView.ignoresSiblingOrder = false
            skView.presentScene(startscene)
        }
    }
    override var prefersStatusBarHidden: Bool{
        get{
            return true
        }
    }
}
