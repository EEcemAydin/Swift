//
//  ViewController.swift
//  CatchTheBobGame
//
//  Created by Ecem Aydın on 21.08.2024.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var score=0
    var timer=Timer()
    var counter=0
    var bobArray=[UIImageView]()//dizi tanımlaması
    var hideTimer=Timer()
    var highScore=0

    //views
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    @IBOutlet weak var bob1: UIImageView!
    @IBOutlet weak var bob2: UIImageView!
    @IBOutlet weak var bob3: UIImageView!
    @IBOutlet weak var bob4: UIImageView!
    @IBOutlet weak var bob5: UIImageView!
    @IBOutlet weak var bob6: UIImageView!
    @IBOutlet weak var bob7: UIImageView!
    @IBOutlet weak var bob8: UIImageView!
    @IBOutlet weak var bob9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreLabel.text="Score: \(score)"
        
        //highscore kontrol
        let storedHighScore = UserDefaults.standard.object(forKey: "highScore")
        if storedHighScore == nil{
            highScore=0
            highscoreLabel.text = "HighScore: \(highScore)"
            
        }
        if let newScore = storedHighScore as? Int
        {
            highScore = newScore
            highscoreLabel.text="Highscore: \(highScore)"
        }
        
        
        
        //images
        bob1.isUserInteractionEnabled = true//resimlere tıklamamızı sağlıyor
        bob2.isUserInteractionEnabled = true
        bob3.isUserInteractionEnabled = true
        bob4.isUserInteractionEnabled = true
        bob5.isUserInteractionEnabled = true
        bob6.isUserInteractionEnabled = true
        bob7.isUserInteractionEnabled = true
        bob8.isUserInteractionEnabled = true
        bob9.isUserInteractionEnabled = true
        
        
        let recognizer1=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        bob1.addGestureRecognizer(recognizer1)
        bob2.addGestureRecognizer(recognizer2)
        bob3.addGestureRecognizer(recognizer3)
        bob4.addGestureRecognizer(recognizer4)
        bob5.addGestureRecognizer(recognizer5)
        bob6.addGestureRecognizer(recognizer6)
        bob7.addGestureRecognizer(recognizer7)
        bob8.addGestureRecognizer(recognizer8)
        bob9.addGestureRecognizer(recognizer9)
        bobArray = [bob1,bob2,bob3,bob4,bob5,bob6,bob7,bob8,bob9]
        
        //Timers
        counter=10
        timeLabel.text=String(counter)
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)//KAÇ SANİYEDE BİR NE YAPACAK
        hideTimer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(hidebob), userInfo: nil, repeats: true)
        hidebob()
        
        
    }
    
    @objc func hidebob()
    {
        
        for bob in bobArray
        {
            bob.isHidden = true//bütün resimleri sırayla kapatacak döngü sayesinde
        }
      
        let random=Int(arc4random_uniform(UInt32(bobArray.count-1)))//bob array sayısına kadar random sayı seçiyor
        bobArray[random].isHidden=false //resmi açıcak
    }
    
    @objc func increaseScore()
    {
        score+=1
        scoreLabel.text="Score: \(score)"//skor değerinin güncellenmesi için tekrar yazdık
        
        
    }
    
    @objc func countDown()//geri sayım fonksiyonu
    {
        counter-=1
        timeLabel.text=String(counter)
        if counter==0
        {
            timer.invalidate()//süre bitti
            hideTimer.invalidate()
            
            for bob in bobArray
            {
                bob.isHidden = true//bütün resimleri sırayla kapatacak döngü sayesinde
            }
            
            //highscore
            if self.score>self.highScore
            {
                self.highScore=self.score
                highscoreLabel.text="HighScore:\(self.highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highScore")
            }
            
            
            //alert hata mesajı verceğiz
            let alert=UIAlertController(title: "Time's Up", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title:"OK", style:UIAlertAction.Style.cancel, handler:nil)//buton ekleme
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default)
            { [self]
                (UIAlertAction) in
                
                //replay function
                self.score=0
                self.scoreLabel.text="Score:\(self.score)"
                self.counter=10
                self.timeLabel.text=String(self.counter)
                
                self.timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)//KAÇ SANİYEDE BİR NE YAPACAK
                self.hideTimer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.hidebob), userInfo: nil, repeats: true)
                
            }
            
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert,animated: true,completion: nil)
            
            
        }
        
    }
    

}

