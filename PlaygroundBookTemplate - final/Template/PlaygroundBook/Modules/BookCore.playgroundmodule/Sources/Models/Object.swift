//
//  Object.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 14/04/21.
//

import SpriteKit

public class Object: SKSpriteNode {
    public override var isUserInteractionEnabled: Bool {
        get {
            return true
        }
        set {
            // ignore
        }
    }
    
    var actionCollidedFalse: () -> Void
    
    public init(texture: SKTexture, size: CGSize, position: CGPoint, actionCollidedFalse: @escaping () -> Void) {
        self.actionCollidedFalse = actionCollidedFalse
        super.init(texture: texture, color: .clear, size: size)
        self.name = "object"
        self.position = position
        self.zPosition = 10
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        removeFromParent()
        actionCollidedFalse()
    }
     
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
