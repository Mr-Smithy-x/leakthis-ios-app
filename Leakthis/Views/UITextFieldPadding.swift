//
//  UIText.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/24/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class UITextFieldPadding: UITextField {

    
    
    
    @IBInspectable var padding: CGFloat = 20
    
    
    

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: padding, bottom: 0, right: padding))
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: padding, bottom: 0, right: padding))
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: padding, bottom: 0, right: padding))
    }
}
