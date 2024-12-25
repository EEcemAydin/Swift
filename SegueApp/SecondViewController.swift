//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Ecem Aydın on 20.08.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    


}
