//
//  Tv.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 17/04/21.
//

import SpriteKit

public class Tv: SKSpriteNode {
    
    public override var isUserInteractionEnabled: Bool {
        get {
            return true
        }
        set {
            // ignore
        }
    }
    
    public init(texture: SKTexture, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: .clear, size: size)
        self.texture = texture
        self.size = size
        self.position = position
        self.zPosition = 1
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Mudar a textura
        self.texture = SKTexture(imageNamed: "TVAberta")
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
