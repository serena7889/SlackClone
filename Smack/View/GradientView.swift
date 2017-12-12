//
//  GradientView.swift
//  Smack
//
//  Created by Serena Lambert on 12/12/2017.
//  Copyright © 2017 Serena Lambert. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1568627451, green: 0.9490196078, blue: 0.8862745098, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    override func layoutSubviews() {
        let gradientLayout = CAGradientLayer()
        gradientLayout.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayout.startPoint = CGPoint(x: 0, y: 0)
        gradientLayout.endPoint = CGPoint(x: 1, y: 1)
        gradientLayout.frame = self.bounds
        self.layer.insertSublayer(gradientLayout, at: 0)
        
    }
}
