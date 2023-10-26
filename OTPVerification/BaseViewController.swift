//
//  OTPViewController.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 26/10/23.
//

import UIKit

class OtpBaseViewController: UIViewController {

//    var emailString: String?
    
    let stackView = UIStackView()
    let topView = UIView()
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    let contentView = UIView()
    let nextButton = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

}

// MARK: - Setup and Layout
extension OtpBaseViewController {
    
    private func setup() {
//        title = "Verify Code"
        
//        imageView.image = Icons.email.image
        imageView.contentMode = .scaleAspectFit
        
//        titleLabel.text = "Enter code"
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        
//        descriptionLabel.text = "Enter the verification code sent to \(String(describing: emailString))"
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        
        let btnText = NSAttributedString(string: "Continue".uppercased(), attributes: [.font: UIFont.systemFont(ofSize: 18)])
        nextButton.setAttributedTitle(btnText, for: .normal)

        var btnConfig = UIButton.Configuration.plain()
        btnConfig.imagePadding = 16
        btnConfig.imagePlacement = .trailing
        nextButton.configuration = btnConfig
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.backgroundColor = UIColor(named: Colors.primary.rawValue)
        nextButton.layer.cornerRadius = 4
        nextButton.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        nextButton.tintColor = .white
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        
        [topView, imageView, titleLabel, descriptionLabel, contentView, nextButton].forEach(
            stackView.addArrangedSubview(_:)
        )
//        stackView.setCustomSpacing(60, after: imageView)
        
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            topView.heightAnchor.constraint(equalToConstant: 64),

//            imageView.heightAnchor.constraint(equalToConstant: 150),
            
            contentView.heightAnchor.constraint(equalToConstant: 80),
            
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            view.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 20),
        ])
    }
    
}
