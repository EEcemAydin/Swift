//
//  ViewController.swift
//  SegueApp
//
//  Created by Ecem Aydın on 20.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {//kullanıcı ilk ekranı gördüğünde yaptığı işlemler
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle sadece çalıştırdığımızda bir kez yazdırıyor
        print("viewDidLoad function called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text = "" //adımı yazdım ve ileri gittim back tuşuyla geri geldiğimde adımın yazılı olduğu yer temzilenmiş geliyor
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    

    @IBAction func nextClicked(_ sender: Any) {
       userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)//nil ihtiyaç yok 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"
        {   //as casting
            let destinationVC = segue.destination as! SecondViewController //gidilecek yeri verir
            destinationVC.myName = userName
        }
    }
    
}

