//
//  ViewController.swift
//  Audio Player
//
//  Created by admin on 11/02/2020.
//  Copyright © 2020 AM Kirsch. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderMoved(_ sender: Any) {
        player.volume = slider.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let audioPath = Bundle.main.path(forResource: "fur-elise", ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            player.play()
            
        } catch {
            print("AVPlayer error")
        }
    }


}

