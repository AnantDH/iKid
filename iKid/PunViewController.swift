//
//  PunViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class PunViewController: UIViewController {
    @IBOutlet weak var punSetupLabel: UILabel!
    
    var jokeSetup = "pun setup"
    var jokePunchline = "pun punchline"
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
    }
}
