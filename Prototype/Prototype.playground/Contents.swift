//: Playground

import UIKit
import Foundation

class Display {
    var name: String?
    let font: String
    
    init(font: String) {
        self.font = font
    }
    
    func clone() -> Display {
        return Display(font:self.font)
    }
}

//#Usage

let prototype = Display(font: "Arial")

let philips = prototype.clone()
philips.name = "Philips"
print("Instance one: \(String(describing: philips.name)), \(philips.font)")

let okado = prototype.clone()
okado.name = "Okado"
print("Instance two: \(String(describing: okado.name)), \(okado.font)")
