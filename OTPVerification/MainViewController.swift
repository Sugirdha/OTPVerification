//
//  ViewController.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 25/10/23.
//

import UIKit

class MainViewController: UIViewController {

    let stackView = UIStackView()
    let topView = UIView()
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    let emailTextField = UITextField()
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    @objc func nextButtonTapped() {
        let nextVc = OTPViewController()
                nextVc.emailString = emailTextField.text ?? "example@abc.com"
                navigationController?.pushViewController(nextVc, animated: true)
    }

}

// MARK: - Setup and Layout
extension MainViewController {
    
    private func setup() {
        /// style
        titleLabel.text = "Enter your email address"
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel.adjustsFontSizeToFitWidth = true
        
        descriptionLabel.text = "We'll send you an OTP code for verifiction"
        
        emailTextField.placeholder = "Enter your email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        
        let btnText = NSAttributedString(string: "Continue".uppercased(), attributes: [.font: UIFont.systemFont(ofSize: 18)])
        nextButton.setAttributedTitle(btnText, for: .normal)
        nextButton.isEnabled = false
        var btnConfig = UIButton.Configuration.plain()
        btnConfig.imagePadding = 16
        btnConfig.imagePlacement = .trailing
        nextButton.configuration = btnConfig
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.backgroundColor = UIColor(named: Colors.primary.rawValue)
        nextButton.layer.cornerRadius = 4
        nextButton.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        nextButton.tintColor = .white
        
        stackView.axis = .vertical
        stackView.spacing = 60

        /// functionality
        emailTextField.delegate = self
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .primaryActionTriggered)
        
        /// layout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        [topView, titleLabel, descriptionLabel, emailTextField, nextButton].forEach(
            stackView.addArrangedSubview(_:)
        )
        stackView.setCustomSpacing(10, after: titleLabel)

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            topView.heightAnchor.constraint(equalToConstant: 36),

            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            view.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 20),
        ])
    }
    
}

// MARK: - TextField Delegate
extension MainViewController: UITextFieldDelegate {

    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField.text != nil {
            nextButton.isEnabled = textField.didEnterValidEmail()
        }

    }
    
}
