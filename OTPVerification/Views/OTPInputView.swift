//
//  OTPInputView.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 26/10/23.
//

import UIKit

class OTPInputView: UIView {

    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

// MARK: - Setup and Layout
extension OTPInputView {
    
    private func setup() {
        for _ in 0..<Constants.otpDigitsNum {
            let textView = OTPTextView()
            stackView.addArrangedSubview(textView)
        }
        
        /// style
        stackView.isUserInteractionEnabled = true
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        /// layout
        heightAnchor.constraint(equalToConstant: 60).isActive = true

        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 10),
        ])
    }
    
}
