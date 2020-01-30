//
//  ShadowEXT.swift
//  CleanerApp
//
//  Created by Ahmed Ayad on 7/2/19.
//  Copyright © 2019 ahmed ayad. All rights reserved.
//

import Foundation
import UIKit
extension UIView {
    
    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                   shadowOffset: CGSize = CGSize(width: 0, height: 1),
                   shadowOpacity: Float = 0.2,
                   shadowRadius: CGFloat = 4.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.masksToBounds = false
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    func addWhiteShadow(shadowColor: CGColor = UIColor.white.cgColor,
                   shadowOffset: CGSize = CGSize(width: 0, height: 1),
                   shadowOpacity: Float = 0.2,
                   shadowRadius: CGFloat = 4.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.masksToBounds = false
    }
}
