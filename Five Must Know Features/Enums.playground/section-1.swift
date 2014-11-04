// Playground - noun: a place where people can play

import UIKit

enum Corners: Int {
    case Top = 1
    case Bottom
    case Right
    case Left
}

Corners.Right.rawValue
Corners(rawValue: 3) == Corners.Right

var corner = Corners.Left
corner = .Right


// -----------------------------------


//enum Corners {
//    case Right(CGPoint)
//}
//
//var corner = Corners.Right(CGPointZero)

