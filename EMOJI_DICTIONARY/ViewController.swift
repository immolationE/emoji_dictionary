//
//  ViewController.swift
//  EMOJI_DICTIONARY
//
//  Created by Richard on 1/16/17.
//  Copyright © 2017 ELION. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var MainTableView: UITableView!
    
    var emojis : [Emoji]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MainTableView.dataSource=self
        MainTableView.delegate=self
        emojis = makeEmojiArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text=emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji=emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC=segue.destination as! DefinitionViewController
        defVC.emoji=sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1=Emoji()
        emoji1.stringEmoji="🚁"
        emoji1.rolloutYear=2013
        emoji1.category="Vehicle"
        emoji1.definintion="Helicopter"
        
        let emoji2=Emoji()
        emoji2.stringEmoji="🤠"
        emoji2.rolloutYear=2012
        emoji2.category="Smiley"
        emoji2.definintion="Cowboy"
        
        let emoji3=Emoji()
        emoji3.stringEmoji="👾"
        emoji3.rolloutYear=2012
        emoji3.category="Video Game"
        emoji3.definintion="Space Invader"
        
        let emoji4=Emoji()
        emoji4.stringEmoji="🦉"
        emoji4.rolloutYear=2015
        emoji4.category="Animal"
        emoji4.definintion="Owl"
        
        let emoji5=Emoji()
        emoji5.stringEmoji="☕️"
        emoji5.rolloutYear=2007
        emoji5.category="Coffee"
        emoji5.definintion="Drinks"
        
        let emoji6=Emoji()
        emoji6.stringEmoji="📡"
        emoji6.rolloutYear=2012
        emoji6.category="Thing"
        emoji6.definintion="Radar"
        
        let emoji7=Emoji()
        emoji7.stringEmoji="🍩"
        emoji7.rolloutYear=2012
        emoji7.category="Food"
        emoji7.definintion="Doughnut"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]

    }


}

