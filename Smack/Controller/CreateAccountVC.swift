//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Serena Lambert on 13/12/2017.
//  Copyright © 2017 Serena Lambert. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
