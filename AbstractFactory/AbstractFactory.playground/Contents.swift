//: Playground - noun: a place where people can play
import UIKit

//acstract clesses
protocol IPhoneFactory {
    func getPhone() -> GenericPhone
    func getPad() -> GenericPad
}

protocol GenericPad {
    var osName: String? { get set }
    var productName: String? { get set }
    var screenSize: Float? { get set }
}

protocol GenericPhone {
    var osName: String? { get set }
    var productName: String? { get set }
}

//concrete objects
class AppleIPhone: GenericPhone {
    var productName: String?
    var osName: String?
    
    init() {
        //super.init()
        self.productName = "Apple iPhone"
        self.osName = "iOS"
    }
}

class AppleIPad: GenericPad {
    var productName: String?
    var osName: String?
    var screenSize: Float?
    
    init() {
        self.productName = "iPad"
        self.osName = "iOS"
        self.screenSize = 12.1
    }
}

//Concrete objects
class FakePhone: GenericPhone {
    var productName: String?
    var osName: String?
 
    init() {
        self.productName = "FakeFon"
        self.osName = "Android"
    }
}

class FakePad: GenericPad {
    var productName: String?
    var osName: String?
    var screenSize: Float?
 
    init() {
        self.productName = "FakePad"
        self.osName = "Android"
        self.screenSize = 7.7
    }
}

//Concrete factories
class AppleFactory: IPhoneFactory {
    
    func getPhone() -> GenericPhone {
        let iPhone = AppleIPhone()
        return iPhone
    }
    
    func getPad() -> GenericPad {
        let iPad = AppleIPad()
        return iPad
    }
}

class FakeFactory: IPhoneFactory {
    
    func getPhone() -> GenericPhone {
        let iPhone = FakePhone()
        return iPhone
    }
    
    func getPad() -> GenericPad {
        let iPad = FakePad()
        return iPad
    }
}


//Usage factories
var isLowMoney: Bool = false

func getFactory() -> IPhoneFactory {
    if (isLowMoney) {
        return FakeFactory()
    }
    return AppleFactory()
}

//init objects, valiously of 'money'
let fac = getFactory()
var iPhone: GenericPhone
var iPad: GenericPad

iPhone = fac.getPhone()
iPad = fac.getPad()

print("iPad: \(iPad.productName!), os name: \(iPad.osName!), screensize: \(iPad.screenSize!)")
print("iPhone: \(iPhone.productName!), os name: \(iPhone.osName!)")
