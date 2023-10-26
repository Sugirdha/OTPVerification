//
//  Constants.swift
//  OTPVerification
//
//  Created by Sugirdha Vaithyanathan on 25/10/23.
//

import UIKit

enum Colors: String {
    case primary = "color-primary"
}

enum Icons {
    case app
    case email
    case verify
    
    var image: UIImage? {
        switch self {
        case .app:
            return UIImage(named: "ic-lock")
        case .email:
            return UIImage(named: "ic-email")
        case .verify:
            return UIImage(named: "ic-verify")
        }
    }
}

struct Constants {
    
    
    
}
