//
//  ArtScene1.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 10/04/21.
//

import SpriteKit
import UIKit
import PlaygroundSupport

public class ArtScene3: SKScene {
    public var environment: Environment!
 
    public override func didMove(to view: SKView) {
        let background = SKTexture(imageNamed: "Background3")
        let sizeBackground = CGSize(width: self.size.width, height: self.size.height)
        self.environment = Environment(texture: background, size: sizeBackground, position: position)
        
//        let light = SKLightNode()
//        light.lightColor = UIColor.white
//        light.falloff = 0.5
        
//        environment.lightingBitMask = 0xFFFFFFFF
//        environment.shadowCastBitMask = 0xFFFFFFFF
            
        //self.addChild(light)
        addChild(environment)
        //addChild(character)
  
    }
    
    public override func update(_ currentTime: TimeInterval) {
    
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Adiciono o quadro na parede
    }
    
    public func addFrameInScene() {
        
    }
    
    

}
