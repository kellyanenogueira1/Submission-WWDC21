//
//  ArtScene1.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 10/04/21.
//

import SpriteKit
import UIKit
import PlaygroundSupport

public class ArtScene4: SKScene {
    
    public override func didMove(to view: SKView) {
        let background = SKTexture(imageNamed: "Background3")
        let sizeBackground = CGSize(width: self.size.width, height: self.size.height)
        self.environment = Environment(texture: background, size: sizeBackground, position: position)

        addChild(environment)
    }

}
