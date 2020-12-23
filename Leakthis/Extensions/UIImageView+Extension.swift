//
//  UIImageView+Extension.swift
//  Leakthis
//
//  Created by Charlton Smith on 12/23/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import UIKit

extension UIImageView {

    func makeRounded() {
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
    
}
