//
//  RampPlacerVC.swift
//  Ramp-up
//
//  Created by Sujanth on 22/8/17.
//  Copyright © 2017 Sujanth. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

class RampPlacerVC: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()

        sceneView.delegate = self
        sceneView.showsStatistics  = true
        
        let scene = SCNScene(named: "art.scnassets/pipe.dae")!
        sceneView.scene = scene
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARWorldTrackingSessionConfiguration()
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        sceneView.session.pause()
    }
    
    
    
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        
    }

}
