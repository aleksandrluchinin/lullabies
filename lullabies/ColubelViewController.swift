//
//  ColubelViewController.swift
//  lullabies
//
//  Created by Aleksandr Luchinin on 10.10.2022.
//

import UIKit
import AVFoundation


class ColubelViewController: UIViewController {
    
    var colubel: String = ""
    
    @IBOutlet weak var oneColubel: UIButton!
    @IBOutlet weak var thoColubel: UIButton!
    @IBOutlet weak var threColubel: UIButton!
    @IBOutlet weak var fourColubel: UIButton!
    
    @IBAction func buttonColubel(_ sender: UIButton) {
        
        let tag = sender.tag
        
        if tag == 1 {
            colubel = "musikColubel1"
            playColubel()
        }
    }
    
    var objPlayer: AVAudioPlayer?
    
    func playColubel() {
        guard Bundle.main.url(forResource: String(colubel), withExtension: "mp3") != nil else { return }
        
        //        (guard let uColubel = Bundle.main.url(forResource: String(colubel), withExtension: "mp3") else { return })
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneColubel.setImage(UIImage(named: "colubel1")?.withRenderingMode(.alwaysOriginal), for: .normal)
        oneColubel.layer.cornerRadius = 10
        
        thoColubel.setImage(UIImage(named: "colubel2")?.withRenderingMode(.alwaysOriginal), for: .normal)
        thoColubel.layer.cornerRadius = 10
        
        threColubel.setImage(UIImage(named: "colubel3")?.withRenderingMode(.alwaysOriginal), for: .normal)
        threColubel.layer.cornerRadius = 10
        
        fourColubel.setImage(UIImage(named: "colubel4")?.withRenderingMode(.alwaysOriginal), for: .normal)
        fourColubel.layer.cornerRadius = 10
        
    }
    
    
}
