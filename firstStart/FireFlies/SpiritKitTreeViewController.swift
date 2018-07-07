//
//  SpiritKitTreeViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 26.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit
import SpriteKit

class SpiritKitTreeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //größenanpassung
        let scene = SKScene(size: CGSize(width:
            self.view.frame.size.width, height:
            self.view.frame.size.height))
        
        //gleiche größe wie die scene
        let skView = SKView(frame: self.view.frame)
        
        //farbe anpassen
        scene.backgroundColor = UIColor.black
        
        //sichtbar machen
        skView.presentScene(scene)
        
        //pfad zum sks-file
        let path = Bundle.main.path(forResource: "FireFlies", ofType:
            "sks")
        
        //die file muss in ein objekt verwandelt werden
        let fireFlyParticle = NSKeyedUnarchiver.unarchiveObject(withFile: path!) as! SKEmitterNode
        
        fireFlyParticle.position = CGPoint(x: self.view.frame.size.width*0.5,
                                           y: self.view.frame.size.height*0.5)
        
        let flyImage = UIImage(named: "Fly")
        let FlySprite = SKSpriteNode(texture: SKTexture(image:
            flyImage!))
        
        FlySprite.position = CGPoint(x: self.view.frame.size.width*0.35,
                                     y: self.view.frame.size.height*0.1)
        
        //füge image und sks-file zur scene
        scene.addChild(FlySprite)
        scene.addChild(fireFlyParticle)
        
        self.view.addSubview(skView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


