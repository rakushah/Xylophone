//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    let noteArray=["note1","note2","note3","note4","note5","note6","note7"]
    var player: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound()
        
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do {
        
            player = try AVAudioPlayer(contentsOf: url!)
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        player.play()
    }

}

