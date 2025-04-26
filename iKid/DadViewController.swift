//
//  DadViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var dadSetupLabel: UILabel!
    var dadSetup = "dad joke setup"
    var dadPunchline = "dad joke punchline"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dadSetupLabel.text = dadSetup
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showPunchline(_ sender: Any) {
        performSegue(withIdentifier: "showPunchline", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! PunchlineViewController
            destinationVC.punchline = dadPunchline
    }
}
