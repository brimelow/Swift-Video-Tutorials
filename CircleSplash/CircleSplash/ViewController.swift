//
//  ViewController.swift
//  CircleSplash
//
//  Created by Lee Brimelow on 10/23/14.
//  Copyright (c) 2014 Lee Brimelow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    
    let filter = CIFilter(name: "CICircleSplashDistortion")
    let context = CIContext(options: nil)
    var extent: CGRect!
    var scaleFactor: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scaleFactor = UIScreen.mainScreen().scale
        extent = CGRectApplyAffineTransform(UIScreen.mainScreen().bounds, CGAffineTransformMakeScale(scaleFactor, scaleFactor))
        
        let ciImage = CIImage(image: imageView.image)
        
        filter.setDefaults()
        filter.setValue(ciImage, forKey: kCIInputImageKey)
        
        imageView.image = UIImage(CGImage: context.createCGImage(filter.outputImage, fromRect: extent))
        
        panGesture.addTarget(self, action: "panned:")
    }
    
    func panned(gesture: UIGestureRecognizer) {
        let location = gesture.locationInView(imageView)
        let x = location.x * scaleFactor
        let y = imageView.bounds.height * scaleFactor - location.y * scaleFactor
        
        filter.setValue(CIVector(x: x, y: y), forKey: kCIInputCenterKey)
        
        imageView.image = UIImage(CGImage: context.createCGImage(filter.outputImage, fromRect: extent))
    }

}





