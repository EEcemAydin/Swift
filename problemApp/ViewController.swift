//
//  ViewController.swift
//  problemApp
//
//  Created by Ecem Aydın on 13.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func button(_ sender: Any) {
        resultLabel.text=String(Int(textField.text!)!*10)
    }
    //programı çalıştırdığımızda 10 yerine ten yazarsak program çöker hata çözümleri için bakılacak siteler
    /* 1-stack owerflow
       2-raywenderich
       3-sketchapp.sources(daha görsel şeyler için)
    */
    
}

