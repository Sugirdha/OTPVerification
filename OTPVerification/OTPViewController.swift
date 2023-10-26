//
//  OTPViewController.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 26/10/23.
//

import UIKit

class OTPViewController: BaseViewController {

    var emailString: String?

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
        stackView.setCustomSpacing(60, after: imageView)
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true

    }

}
