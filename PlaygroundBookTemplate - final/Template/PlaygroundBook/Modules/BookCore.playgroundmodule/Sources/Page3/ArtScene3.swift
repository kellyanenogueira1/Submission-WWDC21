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
    public var character = SKSpriteNode()
    public var photo = SKSpriteNode()
    public var tv = SKSpriteNode()
    public var window: Window!
    var fixedAtWall = false
    
    
    public override func didMove(to view: SKView) {
        let background = SKTexture(imageNamed: "Background3")
        let sizeBackground = CGSize(width: self.size.width, height: self.size.height)
        self.environment = Environment(texture: background, size: sizeBackground, position: position)
        
        photo.texture = SKTexture(imageNamed: "Quadro")
        photo.size = CGSize(width: 53, height: 93)
        photo.position = CGPoint(x: -((self.size.width/2) - 70), y: (self.size.height/2) * 0.3)
        photo.zPosition = 5
        
        let windowTexture = SKTexture(imageNamed: "Janela1")
        let windowSize = CGSize(width: 203, height: 130)
        let windowPosition = CGPoint(x: ((self.size.width/2) - 135), y: (self.size.height/2) * 0.3)
        window = Window(texture: windowTexture, size: windowSize, position: windowPosition)
        
        let tvTexture = SKTexture(imageNamed: "TV")
        let tvSize = CGSize(width: 71, height: 73)
        let tvPosition = CGPoint(x: -((self.size.width/2) - 80), y: -((self.size.height/2) * 0.315))
        tv = Tv(texture: tvTexture, size: tvSize, position: tvPosition)
        
        character.texture = SKTexture(imageNamed: "VovoLadoOposto")
        character.size = CGSize(width: 57, height: 182)
        character.position = CGPoint(x: ((self.size.width/2) - 70), y: -(self.size.height/2) * 0.4)
        character.zPosition = 12

        addChild(environment)
        addChild(window)
        addChild(tv)
        addChild(character)
    }
    
    public override func update(_ currentTime: TimeInterval) {
        
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Adiciono o quadro na parede
        if fixedAtWall == false {
            addFrameInScene()
        }
    }
    
    public func addFrameInScene() {
        addChild(photo)
        fixedAtWall = true
    }
    
    

}
