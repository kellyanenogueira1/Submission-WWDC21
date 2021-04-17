//
//  Character.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 13/04/21.
//

import SpriteKit

public class Character: SKSpriteNode {
    var textures: [SKTexture] = []
    var animation: SKAction!
    
    public init(textura: SKTexture, size: CGSize, position: CGPoint) {
        super.init(texture: textura, color: .clear, size: size)
        self.name = "character"
        self.position = position
        self.zPosition = 12
        
        addTextures()
        
        let textureAction = SKAction.animate(with: textures, timePerFrame: 0.3)
        animation = SKAction.repeatForever(textureAction)
        self.run(animation)
    }
    
    public func addTextures() {
        for i in 1...4 {
            textures.append(SKTexture(imageNamed: "Vovo\(i)"))
        }
        textures.append(textures[3])
        textures.append(textures[2])
        textures.append(textures[1])
    }
    
    public func move() {
        self.position.x += 0.2
    }
    
    public func stopAnimate() {
        self.removeAllActions()
    }
    
    public func animate() {
        self.run(animation)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
