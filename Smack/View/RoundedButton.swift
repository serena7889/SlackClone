//
//  RoundedButton.swift
//  Smack
//
//  Created by Serena Lambert on 07/01/2018.
//  Copyright © 2018 Serena Lambert. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    func setUpView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
}
