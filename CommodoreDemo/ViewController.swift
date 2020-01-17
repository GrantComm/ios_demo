//
//  ViewController.swift
//  CommodoreDemo
//
//  Created by Grant Commodore on 1/16/20.
//  Copyright © 2020 Grant Commodore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    
    @IBOutlet weak var characterImage: UIImageView!
   
    @IBOutlet weak var starWarsLabel: UILabel!
    
    @IBOutlet weak var whichSideButton: UIButton!
    @IBOutlet weak var from_whoLabel: UILabel!
    
    @IBOutlet weak var character_inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterImage.image = UIImage(named: "anakin")
        characterImage.layer.borderWidth = 1
        characterImage.layer.masksToBounds = false
        characterImage.layer.borderColor = UIColor.black.cgColor
        
        characterImage.clipsToBounds = true
    }
    
    
    @IBAction func join_darkside_clicked(_ sender: Any) {
        if(whichSideButton.titleLabel!.text == "Join the Dark Side"){
            characterImage.image = UIImage(named: "vader")
            whichSideButton.setTitle("Return to the Jedi", for: .normal)
            whichSideButton.setTitleColor(UIColor.blue, for: .normal)
            from_whoLabel.text = "Darth Vader!"
            from_whoLabel.textColor = UIColor.red
        }else{
            characterImage.image = UIImage(named: "anakin")
            whichSideButton.setTitle("Join the Dark Side", for: .normal)
            whichSideButton.setTitleColor(UIColor.red, for: .normal)
            from_whoLabel.textColor = UIColor.blue
            from_whoLabel.text = "Anakin Skywalker!"
        }
    }
    
    
    @IBAction func submit_clicked(_ sender: Any) {
        from_whoLabel.text = character_inputTextField.text
        from_whoLabel.textColor = UIColor.green
        characterImage.image = nil
    }
    
    
    @IBAction func where_clicked(_ sender: Any) {
        if(from_whoLabel.text == "Anakin Skywalker!"){
            view.backgroundColor = UIColor.white
        }
        else if(from_whoLabel.text == "Darth Vader!"){
            view.backgroundColor = UIColor.gray
        }
        else{
            view.backgroundColor = UIColor.black
        }
    }
    
    
    
 
    
    

}


