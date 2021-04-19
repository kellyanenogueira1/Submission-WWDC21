//
//  Window.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 17/04/21.
//

import SpriteKit

public class Window: SKSpriteNode {
    public var textures: [SKTexture] = []
    var animation: SKAction!
    var isOpen = false
    
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
        addTextures()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Fazer animação de abrir
        if isOpen == false {
            openWindow()
        }
        
    
    }
    
    public func addTextures() {
        for i in 1...9 {
            textures.append(SKTexture(imageNamed: "Janela\(i)"))
        }
    }
    
    public func openWindow() {
        animation = SKAction.animate(with: textures, timePerFrame: 0.3)
        self.run(animation)
        self.isOpen = true
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

