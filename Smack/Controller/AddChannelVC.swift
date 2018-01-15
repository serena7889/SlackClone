//
//  AddChannelVC.swift
//  Smack
//
//  Created by Serena Lambert on 11/01/2018.
//  Copyright © 2018 Serena Lambert. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var channelDescTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    
    @IBAction func closeModalePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text, channelName != "" else { return }
        guard let channelDescription = channelDescTxt.text else { return }
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDescription) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    func setUpView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: SMACK_PURPLE_PLACEHOLDER])
        channelDescTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: SMACK_PURPLE_PLACEHOLDER])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
