//
//  DefinitionViewController.swift
//  EMOJI_DICTIONARY
//
//  Created by Richard on 1/18/17.
//  Copyright © 2017 ELION. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji="NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text=emoji
        
        if emoji=="🚁" {
            definitionLabel.text="Helicopters are cool."
        }
        if emoji=="🤠" {
            definitionLabel.text="I wanna be a cowboy."
        }
        if emoji=="👾" {
            definitionLabel.text="Space Invaders!"
        }
        if emoji=="🦉" {
            definitionLabel.text="Give a Hoot, Don't Pollute."
        }
        if emoji=="☕️" {
            definitionLabel.text="Coffee is life"
        }
        if emoji=="📡" {
            definitionLabel.text="Beam me up Scotty."
        }
        if emoji=="🍩" {
            definitionLabel.text="Mmmmm, Doughnuts."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
