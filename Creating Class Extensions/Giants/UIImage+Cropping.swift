//
//  UIImage+Cropping.swift
//  Giants
//
//  Created by Lee Brimelow on 6/10/14.
//  Copyright (c) 2014 Lee Brimelow. All rights reserved.
//

import UIKit

extension UIImage {
    
    func cropToCircleWithBorderColor(color: UIColor, lineWidth: CGFloat) -> UIImage {
        
        let imgRect = CGRect(origin: CGPointZero, size: self.size)
        
        UIGraphicsBeginImageContext(imgRect.size)
        var context = UIGraphicsGetCurrentContext()
        
        CGContextAddEllipseInRect(context, imgRect)
        CGContextClip(context)
        
        self.drawAtPoint(CGPointZero)
        
        CGContextAddEllipseInRect(context, imgRect)
        color.setStroke()
        CGContextSetLineWidth(context, lineWidth)
        CGContextStrokePath(context)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        
        return newImage
    }
    
}
