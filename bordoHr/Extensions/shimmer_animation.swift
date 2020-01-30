//
//  shimmer_animation.swift
//  CleanerApp
//
//  Created by Ahmed Ayad on 9/5/19.
//  Copyright © 2019 ahmed ayad. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func shimmer() {
        let light = UIColor.gray.cgColor
        let alpha = UIColor(red: 206/255, green: 10/255, blue: 10/255, alpha: 0.7).cgColor
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: -self.bounds.size.width, y: 0, width: 3 * self.bounds.size.width, height: self.bounds.size.height)
        gradient.colors = [light, alpha, light]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0,y: 0.525)
        gradient.locations = [0.35, 0.50, 0.65]
        self.layer.mask = gradient
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [0.0, 0.1, 0.2]
        animation.toValue = [0.8, 0.9,1.0]
        animation.duration = 6
        animation.repeatCount = HUGE
        gradient.add(animation, forKey: "shimmer")
    }
    func stopShimmeringEffect() {
        self.layer.mask = nil
    }
}





//extension UIView {
//
//    func shimmer() {
//        let gradient = CAGradientLayer()
//        gradient.startPoint = CGPoint(x: 0, y: 0)
//        gradient.endPoint = CGPoint(x: 1, y: -0.02)
//        gradient.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width*3, height: self.bounds.size.height)
//
//        let lowerAlpha: CGFloat = 0.7
//        let solid = UIColor(white: 19, alpha: 1).cgColor
//        let clear = UIColor(white: 2, alpha: lowerAlpha).cgColor
//        gradient.colors     = [ solid, solid, clear, clear, solid, solid ]
//        gradient.locations  = [ 0,0.3,0.45,0.55,0.7,1]
//
//        let theAnimation : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
//        theAnimation.duration = 4
//        theAnimation.repeatCount = Float.infinity
//        theAnimation.autoreverses = false
//        theAnimation.isRemovedOnCompletion = false
//        theAnimation.fillMode = CAMediaTimingFillMode.forwards
//        theAnimation.fromValue = -self.frame.size.width * 2
//        theAnimation.toValue =  0
//        gradient.add(theAnimation, forKey: "animateLayer")
//
//        self.layer.mask = gradient
//}
//}
//
//
