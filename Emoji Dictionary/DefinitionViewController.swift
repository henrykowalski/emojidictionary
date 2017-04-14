//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Andrzej Palec on 14/04/2017.
//  Copyright © 2017 Andrzej Palec. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "🍩" {
        definitionLabel.text = "yummy donut"
        }
        
        if emoji == "🍿" {
            definitionLabel.text = "gimme one"
        }
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
