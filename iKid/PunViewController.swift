//
//  PunViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class PunViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    
    var showingQuestion = false
    var jokeSetup = "I had this great idea for a belt made of watches..."
    var jokePunchline = "But I gave it up when I realized that it would be a waist of time."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showingQuestion = true
        jokeLabel.text = jokeSetup
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        let newText = showingQuestion ? jokePunchline : jokeSetup
        UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromBottom, animations: {
            self.jokeLabel.text = newText
        })
        showingQuestion = !showingQuestion
    }
}
