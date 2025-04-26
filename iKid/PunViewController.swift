//
//  PunViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class PunViewController: UIViewController {
    @IBOutlet weak var punSetupLabel: UILabel!
    
    var jokeSetup = "I had this great idea for a belt made of watches..."
    var jokePunchline = "But I gave it up when I realized that it would be a waist of time."
    override func viewDidLoad() {
        super.viewDidLoad()
        punSetupLabel.text = jokeSetup
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        performSegue(withIdentifier: "showPunchline", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PunchlineViewController
        destination.punchline = jokePunchline
        if let sheet = destination.sheetPresentationController {
            sheet.detents = [.large()]
            sheet.prefersGrabberVisible = true
            sheet.prefersEdgeAttachedInCompactHeight = true
        }
    }
}
