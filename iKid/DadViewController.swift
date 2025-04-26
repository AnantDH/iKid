//
//  DadViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var dadSetupLabel: UILabel!
    var dadSetup = "I accidentally gave my wife a glue stick instead of her lip stick..."
    var dadPunchline = "She still isn’t talking to me"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dadSetupLabel.text = dadSetup
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        performSegue(withIdentifier: "showPunchline", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PunchlineViewController
            destination.punchline = dadPunchline
        if let sheet = destination.sheetPresentationController {
            sheet.detents = [.large()]  
            sheet.prefersGrabberVisible = true
            sheet.prefersEdgeAttachedInCompactHeight = true
        }
    }
}
