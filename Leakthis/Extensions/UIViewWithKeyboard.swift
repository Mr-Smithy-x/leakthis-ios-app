//
//  UIViewWithKeyboard.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/24/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

import UIKit

class UIViewWithKeyboard: UIView {
    @IBInspectable var offsetMultiplier: CGFloat = 0.75
    private var keyboardHeight = 0 as CGFloat
    private weak var activeTextField: UITextField?
    override func awakeFromNib() {
        super.awakeFromNib()
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewWithKeyboard.textDidBeginEditing),
                                               name: UITextField.textDidBeginEditingNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewWithKeyboard.keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewWithKeyboard.keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func textDidBeginEditing(_ notification: NSNotification) {
        self.activeTextField = notification.object as? UITextField
    }

    @objc func keyboardWillShow(_ notification: Notification) {
        if let frameValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            keyboardHeight = frameValue.cgRectValue.size.height
            if let textField = self.activeTextField {
                let offset = textField.frame.maxY < frame.maxY - keyboardHeight ? textField.frame.maxY - (frame.maxY - keyboardHeight) * offsetMultiplier
                           : textField.frame.maxY - (frame.maxY - keyboardHeight) * offsetMultiplier
                self.setView(offset: offset)
            }
        }
    }

    @objc func keyboardWillHide(_ notification: NSNotification) {
        self.setView(offset: 0)
    }

    func setView(offset: CGFloat) {
        UIView.animate(withDuration: 0.25) {
            self.bounds.origin.y = offset
        }
    }
}
