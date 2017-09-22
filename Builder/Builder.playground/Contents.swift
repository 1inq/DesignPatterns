//: Playground - noun: a place where people can play

import UIKit

class AndroidPhone {
    
    var osVersion : String = ""
    var name :String = ""
    var cpuCodeName :String = ""
    var RAMsize :Int = 0
    var osVersionCode : Float = 0
    var launcher :String = ""
}

protocol BuilderProtocol {
    
    func setOSVersion()
    func setName()
    func setCPUCodeName()
    func setRAMsize()
    func setOSVersionCode()
    func setLauncher()
    func build()
    
}
class AndroidPhoneBuilder: BuilderProtocol{
    
    var phone = AndroidPhone()
    func getPhone() -> AndroidPhone {
        return self.phone
    }
    func setOSVersion(){}
    func setName(){}
    func setCPUCodeName(){}
    func setRAMsize(){}
    func setOSVersionCode(){}
    func setLauncher(){}
    func build(){
        self.setOSVersion()
        self.setName()
        self.setCPUCodeName()
        self.setRAMsize()
        self.setOSVersionCode()
        self.setLauncher()
    }
    
}

class LowPricePhoneBuilder: AndroidPhoneBuilder {
    
    override func setOSVersion() {        self.phone.osVersion = "Android 1.6"    }
    override func setName() {        self.phone.name = "ShittyPhone"    }
    override func setCPUCodeName() {        self.phone.cpuCodeName = "Old CPU 800mHz"    }
    override func setRAMsize() {        self.phone.RAMsize = 256    }
    override func setOSVersionCode() {        self.phone.osVersionCode = 1.6    }
    override func setLauncher() {        self.phone.launcher = "ShitWey"    }
}

class HighPricePhoneBuilder: AndroidPhoneBuilder {
    
    override func setOSVersion() {        self.phone.osVersion = "Android 7.0"    }
    override func setName() {        self.phone.name = "Big PRO"    }
    override func setCPUCodeName() {        self.phone.cpuCodeName = "1200 x 8 CPU"    }
    override func setRAMsize() {        self.phone.RAMsize = 4096    }
    override func setOSVersionCode() {        self.phone.osVersionCode = 7.0    }
    override func setLauncher() {        self.phone.launcher = "HTC Super Hight"    }
}

class FactorySalesMan {
    
    var builder = AndroidPhoneBuilder()
    func setBuilder(aBuilder: AndroidPhoneBuilder) {
        self.builder = aBuilder
    }
    
    func getPhone() -> AndroidPhone {
        return self.builder.getPhone()
    }
    
    func constuctPhone() {
        builder.build()
    }
}

//usage different builders

let cheapPhoneBuilder = LowPricePhoneBuilder()
let expensivePhoneBuilder = HighPricePhoneBuilder()

let director = FactorySalesMan()

director.setBuilder(aBuilder: cheapPhoneBuilder)
director.constuctPhone()
let phone = director.getPhone()
print("Phone_1 name: \(phone.name), phone cpu: \(phone.cpuCodeName)")

director.setBuilder(aBuilder: expensivePhoneBuilder)
director.constuctPhone()
let phone2 = director.getPhone()
print("Phone_2 name: \(phone2.name), phone cpu: \(phone2.cpuCodeName)")
