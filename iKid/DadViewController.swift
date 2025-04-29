//
//  DadViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    var dadSetup = "I accidentally gave my wife a glue stick instead of her lip stick..."
    var dadPunchline = "She still isn’t talking to me"
    var showingQuestion = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = dadSetup
        showingQuestion = true
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        let newText = showingQuestion ? dadPunchline : dadSetup
        UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromBottom, animations: {
            self.jokeLabel.text = newText
        })
        showingQuestion = !showingQuestion
    }
}
