//
//  ViewController.swift
//  Giants
//
//  Created by Lee Brimelow on 6/10/14.
//  Copyright (c) 2014 Lee Brimelow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var imageView : UIImageView = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = imageView.image
        imageView.image = img.cropToCircleWithBorderColor(UIColor(red:0.91, green:0.34, blue:0.16, alpha:1.00), lineWidth: 20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

