//
//  ProfileVC.swift
//  Smack
//
//  Created by Serena Lambert on 10/01/2018.
//  Copyright © 2018 Serena Lambert. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    // Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    @IBAction func logOutBtnPressed(_ sender: Any) {
        UserDataService.instance.logOutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func closeModalBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
