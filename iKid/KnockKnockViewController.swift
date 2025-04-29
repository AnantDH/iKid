//
//  KnockKnockViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/28/25.
//

import UIKit

class KnockKnockViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    let jokeBits: [String] = ["Knock Knock", "Who's there?", "Waddle.", "Waddle who?", "Waddle it take to get you to open this door??"]
    var currIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = jokeBits[currIndex]
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        currIndex = (currIndex + 1) % jokeBits.count
        let newText = jokeBits[currIndex]
        UIView.transition(with: displayLabel, duration: 0.5, options: .transitionFlipFromBottom, animations: {
            self.displayLabel.text = newText
        })
    }
}
