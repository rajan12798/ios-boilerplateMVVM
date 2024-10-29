//
//  UIColor+Extension.swift
//  Collabdiary
//
//  Created by rajan kumar on 29/10/24.
//

import UIKit

extension UIColor {
    static var backgroundColor: UIColor {
        return UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark ? UIColor.black : UIColor.white
        }
    }
    
    static var primaryTextColor: UIColor {
        return UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark ? UIColor.white : UIColor.black
        }
    }
}
