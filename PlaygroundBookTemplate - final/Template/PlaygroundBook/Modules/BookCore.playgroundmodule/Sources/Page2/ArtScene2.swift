//
//  ArtScene1.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 10/04/21.
//

import SpriteKit
import UIKit
import PlaygroundSupport

public class ArtScene2: SKScene {
    public var environment: Environment!
    public var character = SKSpriteNode()
    public var buttonBlur: BlurButton!
    
    public override func didMove(to view: SKView) {
        //Add elements in scene
        let background = SKTexture(imageNamed: "Background2")
        let sizeBackground = CGSize(width: self.size.width, height: self.size.height)
        self.environment = Environment(texture: background, size: sizeBackground, position: position)
        
        let textureButton = SKTexture(imageNamed: "olhoAberto")
        let sizeButton = CGSize(width: 40, height: 33)
        let positionButton = CGPoint(x: -(self.size.width/2 - 80), y: self.size.width/2 + 20)
        self.buttonBlur = BlurButton(texture: textureButton, size: sizeButton, position: positionButton)
        
        character.texture = SKTexture(imageNamed: "Vovodecostas")
        character.size = CGSize(width: 57, height: 182)
        character.position = CGPoint(x: -(self.size.width/2 - 195), y: -(self.size.height/2 - 120))
        character.zPosition = 12
        
        let textureDoor1 = SKTexture(imageNamed: "Door1")
        let newTexture1 = SKTexture(imageNamed: "DoorFillColor1")
        let sizeDoor1 = CGSize(width: 125, height: 265)
        let positionDoor1 = CGPoint(x: -(self.size.width/2 - 120), y: character.position.y + 160)
        let door1 = Door(texture: textureDoor1, newTexture: newTexture1, size: sizeDoor1, position: positionDoor1)
        
        let textureDoor2 = SKTexture(imageNamed: "Door2")
        let newTexture2 = SKTexture(imageNamed: "DoorFillColor2")
        let sizeDoor2 = CGSize(width: 125, height: 265)
        let positionDoor2 = CGPoint(x: self.size.width/2 - 120, y: door1.position.y)
        let door2 = Door(texture: textureDoor2, newTexture: newTexture2, size: sizeDoor2, position: positionDoor2)
        
        addChild(environment)
        addChild(buttonBlur)
        addChild(character)
        addChild(door1)
        addChild(door2)
        
    }
    
    public override func update(_ currentTime: TimeInterval) {

    }
    
}
