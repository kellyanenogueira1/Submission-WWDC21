//
//  ArtViewController1.swift
//  BookCore
//
//  Created by Kellyane Nogueira on 13/04/21.
//

import UIKit
import SpriteKit
import PlaygroundSupport

public class ArtViewController3: UIViewController {
    public let scene = ArtScene3()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = SKView()
        if let scene = ArtScene3(fileNamed: "GameScene") {
            scene.size = CGSize(width: 380, height: 667)
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
        
            self.view = view
        }
    }
}
