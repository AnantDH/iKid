//
//  PunchlineViewController.swift
//  iKid
//
//  Created by Anant Dhokia on 4/26/25.
//

import UIKit

class PunchlineViewController: UIViewController {

    var punchline: String?
    @IBOutlet weak var punchlineLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        punchlineLabel.text = punchline
    }
}
