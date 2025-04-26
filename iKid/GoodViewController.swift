//
//  GoodViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var goodSetupLabel: UILabel!
    var goodSetup = "good joke setup text"
    var goodPunchline = "good joke punchline text"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goodSetupLabel.text = goodSetup
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        performSegue(withIdentifier: "showPunchline", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! PunchlineViewController
        destinationVC.punchline = goodPunchline
    }
}
