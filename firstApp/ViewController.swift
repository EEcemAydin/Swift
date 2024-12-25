//
//  ViewController.swift
//  firstApp
//
//  Created by Ecem Aydın on 2.08.2024.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func changeCliked(_ sender: Any) {
        imageView.image=UIImage(named: "images2")
    }
}

