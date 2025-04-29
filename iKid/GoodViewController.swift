//
//  GoodViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    var goodSetup = "A programmer had a problem. He thought to himself, 'I know, I'll solve this using threads!'"
    var goodPunchline = "has Now problems. two he"
    var showingQuestion = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = goodSetup
        showingQuestion = true
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        let newText = showingQuestion ? goodPunchline : goodSetup
        UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromBottom, animations: {
            self.jokeLabel.text = newText
        })
        showingQuestion = !showingQuestion
    }
}
