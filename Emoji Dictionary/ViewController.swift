//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Andrzej Palec on 14/04/2017.
//  Copyright © 2017 Andrzej Palec. All rights reserved.
// yes

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
   
    var emojis : [Emoji] = []
    
    /* puvodne to bylo takhle
    var emojis = ["😀","😇","🤓","💀","👻","🙀","😬","😭","😡","🤕","🎃","🙏🏾","👏","🍩","🍿","🍣","☕️"]
      puvodne to bylo takhle
 */
 
    
    /* to se nepovedlo
    var kecka = ["drzticka","pozoro na svatouška","brejloun","smrtka!","at ziji duchove","uuaaaaa","zzzzzzzz","hihhihihihih","jsem nasranej!", "auuuu", "smashing pumpkin","prosimmm","aplaus","yummy donut","gimme one","zummz sushi...","i need another coffee!"]
 */
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // tenhle radek pomuze ze neni videt predchozi vyber kdyz s evratis zpatky
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        /* to de nepovedlo 
        let HLASKA = kecka[indexPath.row]
        */
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sunglasses"

        let emoji2 = Emoji()
        emoji2.stringEmoji = "😇"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley with saint"
        emoji2.definition = "Holy man"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤓"
        emoji3.birthYear = 2003
        emoji3.category = "Faces"
        emoji3.definition = "Brejloun"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💀"
        emoji4.birthYear = 2099
        emoji4.category = "skull"
        emoji4.definition = "Terrible dead man"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👻"
        emoji5.birthYear = 2222
        emoji5.category = "Ghosts"
        emoji5.definition = "Terrifying story"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
        
}

}
