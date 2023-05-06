//
//  ViewController.swift
//  Keychain
//
//  Created by MD Faizan on 06/05/23.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {

    
    @IBOutlet weak var highScoreLabel: UILabel!
    let keychain = Keychain(service: "com.faizan.Keychain")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //load keychian value
        
        self.highScoreLabel.text = keychain["HighScore"]
        
        
    
    }
    
    
    @IBAction func saveLocalDataButton(_ sender: Any) {
        
        self.highScoreLabel.text = "HighScrore: 100"
        let highScore = self.highScoreLabel.text
      
        //save data in keychain
        keychain["HighScore"] = highScore
        
        
    }
    

}

