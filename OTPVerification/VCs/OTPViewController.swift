//
//  OTPViewController.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 26/10/23.
//

import UIKit

class OTPViewController: BaseViewController {

    var emailString: String?
    
    let otpInputView = OTPInputView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    @objc func nextButtonTapped() {
        // TO DO
    }
    
}

// MARK: - Setup and Layout
extension OTPViewController {
    
    private func setup() {
        /// style
        title = "Verify Code"
        imageView.image = Icons.email.image
        titleLabel.text = "Enter code"
        descriptionLabel.text = "Enter the verification code sent to \(emailString ?? "your email address")"

        /// functionality
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .primaryActionTriggered)

        /// layout
        stackView.spacing = 60
        stackView.setCustomSpacing(10, after: titleLabel)
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        otpInputView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(otpInputView)
        NSLayoutConstraint.activate([
            otpInputView.topAnchor.constraint(equalTo: contentView.topAnchor),
            otpInputView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            otpInputView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            otpInputView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }

}
