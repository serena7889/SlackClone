//
//  ChannelVC.swift
//  Smack
//
//  Created by Serena Lambert on 12/12/2017.
//  Copyright © 2017 Serena Lambert. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "loginVCSegue", sender: nil)
    }
}
