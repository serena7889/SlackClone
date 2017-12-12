//
//  ChannelVC.swift
//  Smack
//
//  Created by Serena Lambert on 12/12/2017.
//  Copyright © 2017 Serena Lambert. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
