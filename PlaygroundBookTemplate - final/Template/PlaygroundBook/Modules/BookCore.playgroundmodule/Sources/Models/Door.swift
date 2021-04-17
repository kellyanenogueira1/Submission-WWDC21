//
//  Door.swift
//  BookCore
//  Created by Kellyane Nogueira on 16/04/21.
//

import SpriteKit

public class Door: SKSpriteNode {
    public var newTexture: SKTexture!
    
    public override var isUserInteractionEnabled: Bool {
        get {
            return true
        }
        set {
            // ignore
        }
    }
    
    public init(texture: SKTexture, newTexture: SKTexture, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: .clear, size: size)
        self.texture = texture
        self.position = position
        self.zPosition = 5
        self.newTexture = newTexture
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.texture = newTexture
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
