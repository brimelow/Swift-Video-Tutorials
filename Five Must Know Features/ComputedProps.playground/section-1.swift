// Playground - noun: a place where people can play

import UIKit

class MyView: UIView {
    
    var size: CGSize {
        get {
            return bounds.size
        }
        set(newSize) {
            var f = frame
            f.size = newSize
            frame = f
        }
    }
    
}

let view = MyView(frame: CGRectMake(0, 0, 200, 200))
view.size = CGSizeMake(400, 400)