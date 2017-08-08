//: Playground - noun: a place where people can play

import UIKit

protocol BirdProtocol {
    func sing()
    func fly()
}

class Bird: BirdProtocol {
    func sing() {
        print("Tweet-tweet-tweet")
    }
    
    func fly() {
        print("I am flying!")
    }
}

class Raven {
    func flySearchAndDestroy() {
        print("Search and destroy!")
    }
    
    func vioce() {
        print("Caw-Caw!")
    }
}


//adapter
class RavenAdapter: BirdProtocol {
    private let raven: Raven
    
    init(adaptee: Raven) {
        self.raven = adaptee
    }
    
    func sing() {
        raven.vioce()
    }
    
    func fly() {
        raven.flySearchAndDestroy()
    }
}

//testing function
func  makeTheBerdTest(aBird: BirdProtocol) {
    aBird.fly()
    aBird.sing()
}

//using adapter
let simpleBird = Bird()
let simpleRaven = Raven()

let ravenAdapter = RavenAdapter(adaptee: simpleRaven)

makeTheBerdTest(aBird: simpleBird)
print(" ---- ")
makeTheBerdTest(aBird: ravenAdapter)
