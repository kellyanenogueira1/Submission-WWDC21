//
//  Environment.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 14/04/21.
//

import SpriteKit

public class Environment: SKSpriteNode {
    public init(texture: SKTexture, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: .clear, size: size)
        self.position = position
        self.zPosition = .zero
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
