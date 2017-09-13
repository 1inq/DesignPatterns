//: Playground - noun: a place where people can play

import UIKit

//Creating:

class Singletone {
    let firstName : String = "Alex"
    let secondName : String = "Sorokin"
    var variable : String = ""
    
    static let sharedInstance = Singletone()
}

//Usage:

var st1 = Singletone.sharedInstance
var st2 = Singletone.sharedInstance

st1.variable = "variable one"

print("\(st2.variable)")




