//
//  ViewController.swift
//  landMarkBook
//
//  Created by Ecem Aydın on 23.08.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       /* var landmarkNames = [String]()
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhenge")
        landmarkNames.append("Taj Mahal")
        
        var landmarkImages = [UIImage]()
        landmarkNames.append(UIImage(named :"colosseum.jpg"))
        landmarkNames.append(UIImage(named :"greatwall.jpg"))
        landmarkNames.append(UIImage(named :"kremlin.jpg"))
        landmarkNames.append(UIImage(named :"stonhenge.jpg"))
        landmarkNames.append(UIImage(named :"tajmahal.jpg"))
        */
        var landmarkImages = [UIImage]()
        var landmarkNames = [String]() // Burası değiştirildi

        landmarkImages.append(UIImage(named: "colosseum.jpg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "stonhenge.jpg")!)
        landmarkImages.append(UIImage(named: "tajmahal.jpg")!)

        landmarkNames.append("colosseum.jpg")
        landmarkNames.append("greatwall.jpg")
        landmarkNames.append("kremlin.jpg")
        landmarkNames.append("stonhenge.jpg")
        landmarkNames.append("tajmahal.jpg")
        
        

        
    }
    //kaç tane girdi olacak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //ne gösterecek
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = "TableView"
        content.secondaryText = "test"
        cell.contentConfiguration = content
        return cell
    }


}

