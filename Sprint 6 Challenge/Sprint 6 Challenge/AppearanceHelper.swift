//
//  AppearanceHelper.swift
//  Sprint 6 Challenge
//
//  Created by Linh Bouniol on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

enum Appearance {
    
    static func setupNavigationAppearance() {
        
        let gradient = CAGradientLayer()
        let bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1.0)
        gradient.frame = bounds
        gradient.colors = [UIColor(red: 197.0/255.0, green: 219.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor, UIColor(red: 73.0/255.0, green: 90.0/255.0, blue: 119.0/255.0, alpha: 1.0).cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        
        if let image = getImageFrom(gradientLayer: gradient) {
            UINavigationBar.appearance().barTintColor = UIColor(patternImage: image)
        }
    
        UIBarButtonItem.appearance().tintColor = .white
        
    }
    
    // Gradient Image
    static func getImageFrom(gradientLayer: CAGradientLayer) -> UIImage? {
        var gradientImage:UIImage?
        UIGraphicsBeginImageContext(gradientLayer.frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            gradientLayer.render(in: context)
            gradientImage = UIGraphicsGetImageFromCurrentImageContext()?.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch)
        }
        UIGraphicsEndImageContext()
        return gradientImage
    }

//    static func showResetButton() {
//        UIBarButtonItem.appearance().tintColor = UIColor(hue: 1.0, saturation: 0.0, brightness: 1.0, alpha: 1.0)
//    }
//    
//    static func hideResetButton() {
//        
//    }
}

