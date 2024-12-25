//
//  ViewController.swift
//  AlertProject
//
//  Created by Ecem Aydın on 21.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        
        /*
        let alert = UIAlertController(title: "Eror", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        
        let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked a tıklanınca olacaklar
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true,completion: nil)
        //animated animasyon kullanıp kullanmamayı soruyor
        //completion gösterdikten sonra bir işlem yapıp yapmayacağını soruyor
        */
        if usernameText.text == ""
        {
            let alert = UIAlertController(title: "Eror", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
              
        }
        else if passwordText.text == ""
        {
            let alert = UIAlertController(title: "Eror", message: "Password not found", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
        }
        else if passwordText.text != password2Text.text
        {
            let alert = UIAlertController(title: "Eror", message: "Password do not match ", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
            
        }
        else
        {
            let alert = UIAlertController(title: "Success", message: "User OK ", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
            
        }
        
    }
}

