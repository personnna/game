//
//  ViewController.swift
//  calc
//
//  Created by eldana on 04.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var touches = 0 {
        didSet{
            touchLabel.text = "touches: \(touches)"
        }
    }
    
    func flipButton(emoji: String, button:UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor(red: 200, green: 42, blue: 200, alpha: 0.5)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
        }
    }
    
    let emojiCollection = ["🦊", "🐰", "🦊", "🐰"]
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        let buttonIndex = buttonCollection.firstIndex(of: sender)!
        flipButton(emoji: emojiCollection[buttonIndex], button: sender)
    }
    
    
    
}

