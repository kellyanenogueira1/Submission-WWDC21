//
//  ArtScene1.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 10/04/21.
//

import SpriteKit
import UIKit
import PlaygroundSupport

public class ArtScene1: SKScene {
    public var environment: Environment!
    public var character: Character!
    public var objects: [Object] = []
    
    public var hasCollided: Bool = false {
        didSet {
            if hasCollided == false {
                character.animate()
            }
        }
    }
    
    public lazy var setCollidedFalse = {
        self.hasCollided = false
    }
    
    public override func didMove(to view: SKView) {
        let background = SKTexture(imageNamed: "Background1")
        let sizeBackground = CGSize(width: self.size.width, height: self.size.height)
        self.environment = Environment(texture: background, size: sizeBackground, position: position)
        
        let textureCharacter = SKTexture(imageNamed: "Vovo1")
        let characterPosition = CGPoint(x: -(self.size.width/2 - 50), y: -(self.size.height/2 - 145))
        character = Character(textura: textureCharacter, size: CGSize(width: 57, height: 182), position: characterPosition)
    
        let texture0 =  SKTexture(imageNamed: "Relogio")
        let position0 = CGPoint(x: self.position.x, y: self.position.y + 100)
        let object0 = Object(texture: texture0, size: CGSize(width: 40, height: 40), position: position0, actionCollidedFalse: setCollidedFalse)
    
        let texture1 =  SKTexture(imageNamed: "Carrinho")
        let position1 = CGPoint(x: character.position.x + 100, y: character.position.y - 45)
        let object1 = Object(texture: texture1, size: CGSize(width: 40, height: 30), position: position1, actionCollidedFalse: setCollidedFalse)
    
        let texture2 =  SKTexture(imageNamed: "Abajur")
        let position2 = CGPoint(x: object1.position.x + 80, y: character.position.y + 15)
        let object2 = Object(texture: texture2, size: CGSize(width: 70, height: 115), position: position2, actionCollidedFalse: setCollidedFalse)
    
        let texture3 =  SKTexture(imageNamed: "Banana")
        let position3 = CGPoint(x: object2.position.x + 115, y: character.position.y - 30)
        let object3 = Object(texture: texture3, size: CGSize(width: 35, height: 30), position: position3, actionCollidedFalse: setCollidedFalse)
        objects = [object0, object1, object2, object3]
        
        addChild(environment)
        addChild(character)
        addObjectsInScene()
        
    }
    
    public override func update(_ currentTime: TimeInterval) {
        if !hasCollided {
            checkCollision()
        }
    }
    
    public func addObjectsInScene() {
        for object in objects {
            addChild(object)
        }
    }
    
    //  o| |
    
    public func checkCollision() {
        enumerateChildNodes(withName: "object", using: ({ [self]
            (node, error) in
            let object = node as! Object
            let collided = object.frame.intersects(self.character.frame)
            if !collided {
                self.character.move()
            } else {
                hasCollided = true
                self.character.stopAnimate()
            }
        }))
    }
    
    public override func didChangeSize(_ oldSize: CGSize) {
        
    }
}



