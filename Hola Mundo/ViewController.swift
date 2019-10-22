//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Rodrigo Lopez on 17/10/2019.
//  Copyright © 2019 UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func upsdateButton1(_ sender: UIButton){
        msgLabel.text = "Hola"
    }
    
    @IBAction func updateButton2(_ sender: UIButton) {
         msgLabel.text = "Mundo"
    }
        
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
}

