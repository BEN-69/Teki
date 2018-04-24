//
//  ViewController.swift
//  Teki
//
//  Created by Benaata on 20/04/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var celebrities = ["Email", "Télephone", "Site web"]
    var activities = ["r.benaata@gmail.com", "0627715477", "http://brportfolio.pe.hu"]
    
    @IBOutlet weak var homeTextView: UITextView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var hello: UILabel!
    
    @IBAction func contact() {
        
        homeTextView.backgroundColor = UIColor .white ;
    homeTextView.layer.borderWidth=1
        homeTextView.layer.cornerRadius = 8
    homeTextView.layer.borderColor =
        UIColor .blue .cgColor
        
        
        // On séléctionne un élément alétoire parmi les célébrités
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
      
        
        // On séléctionne un élément aléatoire parmi les activités
        let activity = activities[randomIndex1]
                
        hello.text = " " + celebrity + " :  " + activity + " !"
        hello.backgroundColor =
        UIColor .yellow
        hello.layer.borderColor =
            UIColor .red .cgColor

        
    }
}

