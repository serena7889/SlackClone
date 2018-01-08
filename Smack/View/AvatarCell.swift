//
//  AvatarCell.swift
//  Smack
//
//  Created by Serena Lambert on 08/01/2018.
//  Copyright © 2018 Serena Lambert. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        
    }
    
}
