//
//  OTPTextField.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 26/10/23.
//

import UIKit

class OTPTextField: UITextField {

    weak var prevTF: OTPTextField?
    weak var nextTF: OTPTextField?
    
    override public func deleteBackward() {
        if let hasText = prevTF?.hasText, hasText {
            prevTF?.text = ""
        }
        prevTF?.becomeFirstResponder()
    }

}

class OTPTextView: UIView {
    
    let bottomLine = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.clear

        bottomLine.translatesAutoresizingMaskIntoConstraints = false
        bottomLine.backgroundColor = .darkText
        bottomLine.autoresizingMask = [.flexibleTopMargin]
        self.addSubview(bottomLine)

        NSLayoutConstraint.activate([
            bottomLine.widthAnchor.constraint(equalToConstant: Constants.bottomLineWidth),
            bottomLine.heightAnchor.constraint(equalToConstant: Constants.bottomLineHeight),
            bottomLine.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomLine.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
}
