// Playground - noun: a place where people can play

import UIKit

var arr = [1,2,3,4]
arr.append(10)
arr += [45,6,89,7]
arr.first
arr.last
arr.removeLast()
arr[1...3] = [123,5,3]

arr

var arr2 = [Int](count: 20, repeatedValue: 50)