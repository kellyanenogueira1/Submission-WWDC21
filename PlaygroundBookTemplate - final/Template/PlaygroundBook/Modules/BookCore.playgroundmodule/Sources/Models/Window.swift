//
//  Window.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 17/04/21.
//

import SpriteKit

public class Window: SKSpriteNode {
    public var textures: [SKTexture] = []
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
        self.zPosition = 5
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Fazer animação de abrir
    }
    
    //    public func addTextures() {
    //        for i in 1...4 {
    //            textures.append(SKTexture(imageNamed: "Janela\(i)"))
    //        }
    //    }
    
    public func openWindow() {
        
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

