//
//  ViewController.swift
//  BHİRTDAYnOTEtAKER
//
//  Created by Ecem Aydın on 15.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stordName=UserDefaults.standard.object(forKey: "name")
        //forkey opsiyonel çünkü ilk başta kullanıcı bir şey girmeden de sistem çalışıyor,yukarıda yaptığımız kaydedilen verilerin getirilmesini sağlar
        
        let stordBirthday=UserDefaults.standard.object(forKey: "birthday")
        
        //casting as? ya da as!
        nameLabel.text=stordName as? String //stordName i yapabilirsen stringe çevir
        // ünlemli olsaydı kesinlikle stringe çevir demek olurdu
        
        if let newName=stordName as? String
        {
            nameLabel.text=newName
        }
        if let newBirthday=stordBirthday as? String
        {
            birthdayLabel.text=newBirthday
        }
            
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.setValue(nameTextField.text!, forKeyPath: "name")
        UserDefaults.standard.setValue(birthdayTextField.text!, forKeyPath: "birthday:")
        //üst iki satırda yaptığım verileri kaydetmek için
        
        nameLabel.text=nameTextField.text
        birthdayLabel.text=birthdayTextField.text
    }
    
    @IBAction func deleteCliked(_ sender: Any) {
        
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedBirthday=UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String
        {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text="Name:"
        }
        
        if storedBirthday is String
        {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text="Birthday:"
        }
        
    }
}

