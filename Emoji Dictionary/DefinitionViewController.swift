//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Andrzej Palec on 14/04/2017.
//  Copyright © 2017 Andrzej Palec. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    // to se nepovedlo
    // var HLASKA = "NO HLáška"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = "Definition: \(emoji.definition)"
        
        
        // to se nepovedlo:
        // definitionLabel.text = HLASKA
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
