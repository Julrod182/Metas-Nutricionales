//
//  ResultsViewController.swift
//  Metas Nutricionales
//
//  Created by Julio Rodriguez Reategui on 23/08/22.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var message = "Bien Hecho!!"

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad(){
        messageLabel.text = message
    }
    
    @IBAction func returnKeyPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
