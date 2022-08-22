//
//  GameScene.swift
//  Fox
//
//  Created by Thomas Jenkins on 8/21/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var player: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
           player = (self.childNode(withName: "//player") as! SKSpriteNode)

          /* allows the hero to animate when it's in the GameScene */
          player.isPaused = false
          backgroundColor = SKColor.white
          // 3
          player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
          // 4
          

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        player.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 300))
    }
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
        
        /* Grab current velocity */
        let velocityY = player.physicsBody?.velocity.dy ?? 0

        /* Check and cap vertical velocity */
        if velocityY > 400 {
            player.physicsBody?.velocity.dy = 400
        }
    }
}
