//
//  BlurButton.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 17/04/21.
//

import SpriteKit

public class BlurButton: SKSpriteNode {
    public var newTexture: SKTexture
    public var initialTexture: SKTexture
    public var count: Int = 0
    public var isActive: Bool = false
    
    public override var isUserInteractionEnabled: Bool {
        get {
            return true
        }
        set {
            // ignore
        }
    }
    
    public init(texture: SKTexture, size: CGSize, position: CGPoint) {
        self.newTexture = SKTexture(imageNamed: "olhoFechado")
        self.initialTexture = texture
        super.init(texture: texture, color: .clear, size: size)
        self.texture = texture
        self.size = size
        self.position = position
        self.zPosition = 5
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        count+=1
        if count % 2 != 0 {
            self.texture = newTexture
            self.isActive = true
            applyBlur()
        } else {
            self.texture = initialTexture
            self.isActive = false
            applyBlur()
        }
    }
    
    public func applyBlur() {
        var blurFilter = CIFilter(name:"CIGaussianBlur", parameters: ["inputRadius": 5.0])
        if let parent = parent?.scene {
            if isActive {
                parent.shouldRasterize = true
                parent.filter = blurFilter
                parent.shouldEnableEffects = true
            } else {
                blurFilter = CIFilter(name:"CIGaussianBlur", parameters: ["inputRadius": 0.0])
                parent.filter = blurFilter
                parent.shouldEnableEffects = true
            }
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
