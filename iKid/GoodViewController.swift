//
//  GoodViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var goodSetupLabel: UILabel!
    var goodSetup = "A programmer had a problem. He thought to himself, 'I know, I'll solve this using threads!'"
    var goodPunchline = "has Now problems. two he"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goodSetupLabel.text = goodSetup
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        performSegue(withIdentifier: "showPunchline", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PunchlineViewController
        destination.punchline = goodPunchline
        if let sheet = destination.sheetPresentationController {
            sheet.detents = [.large()]
            sheet.prefersGrabberVisible = true
            sheet.prefersEdgeAttachedInCompactHeight = true
        }
    }
}
