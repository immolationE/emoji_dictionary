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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    var emoji=Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text=emoji.stringEmoji
        yearLabel.text="Rollout Year: \(emoji.rolloutYear)"
        categoryLabel.text="Category: \(emoji.category)"
        definitionLabel.text=emoji.definintion
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
