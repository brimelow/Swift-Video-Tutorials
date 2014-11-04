// Playground - noun: a place where people can play

import UIKit

var weight = (214, "214lbs")
    
print(weight.0)
print(weight.1)
    
let (_, weightStr) = weight
print(weightStr)


//-----------------------------------------


func stringInfo(str: String) -> (words: NSArray, num: Int) {
    
    let words = str.componentsSeparatedByString(" ")
    
    var num = 0
    
    for word in words {
        if word == "the" {
            num++
        }
    }
    
    return (words, num)
}

let (words, num) = stringInfo("The Giants played at the Polo Grounds in Manhattan, New York, until the close of the 1957 season, after which they moved west to California to become the San Francisco Giants. As the New York Giants, they won 14 pennants and 5 World Series championships behind managers such as John McGraw and Bill Terry and players like Christy Mathewson, Carl Hubbell, Mel Ott, Bobby Thomson, and Willie Mays. The Giants have won six pennants and three World Series championships since arriving in San Francisco. They are the newly crowned World Champions of Baseball for 2014 after defeating the Kansas City Royals 4 games to 3 during the 2014 World Series on October 29, 2014.")
num