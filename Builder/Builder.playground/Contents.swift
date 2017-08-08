//: Playground - noun: a place where people can play

import UIKit

class AndriodPhone {
    
    var osVersion = ""
    var name = ""
    var cpuCodeName = ""
    var RAMsize = 0
    var osVersionCode : Float = 0
    var launcher = ""
    
    func setOSVersion() {
        self.osVersion = ""
    }
    
    func setName() {
        self.name = ""
    }
    
    func setCPUCodeName() {
        self.cpuCodeName = ""
    }
    
    func setRAMsize() {
        self.RAMsize = 0
    }
    
    func setOSVersionCode() {
        self.osVersionCode = 0
    }
    
    func setLauncher() {
        self.osVersion = ""
    }
}

class AndroidPhoneBuilder {
    
    let phone = AndriodPhone()
    
    func getPhone() -> AndriodPhone  {
        return self.phone
    }
    
}

class LowPricePhoneBuilder: AndroidPhoneBuilder {
    func setOSVersion() {
        self.phone.osVersion = "Android 1.6"
    }
    
    func setName() {
        self.phone.name = "ShittyPhone"
    }
    
    func setCPUCodeName() {
        self.phone.cpuCodeName = "Old CPU 800mHz"
    }
    
    func setRAMsize() {
        self.phone.RAMsize = 256
    }
    
    func setOSVersionCode() {
        self.phone.osVersionCode = 1.6
    }
    
    func setLauncher() {
        self.phone.launcher = "ShitWey"
    }
}

class HighPricePhoneBuilder: AndroidPhoneBuilder {
    func setOSVersion() {
        self.phone.osVersion = "Android 7.0"
    }
    
    func setName() {
        self.phone.name = "Big PRO"
    }
    
    func setCPUCodeName() {
        self.phone.cpuCodeName = "1200 x 8 CPU"
    }
    
    func setRAMsize() {
        self.phone.RAMsize = 4096
    }
    
    func setOSVersionCode() {
        self.phone.osVersionCode = 7.0
    }
    
    func setLauncher() {
        self.phone.launcher = "HTC Super Hight"
    }
}

class FactorySalesMan {
    
    var builder = AndroidPhoneBuilder()
    
    func setBuilder(aBuilder: AndroidPhoneBuilder) {
        self.builder = aBuilder
    }
    
    func getPhone() -> AndriodPhone {
        return self.builder.getPhone()
    }
    
    func constuctPhone() {
        if let builder = builder as? LowPricePhoneBuilder {
            builder.setOSVersion()
            builder.setName()
            builder.setCPUCodeName()
            builder.setRAMsize()
            builder.setOSVersionCode()
            builder.setLauncher()
            
        } else if let builder = builder as? HighPricePhoneBuilder {
            builder.setOSVersion()
            builder.setName()
            builder.setCPUCodeName()
            builder.setRAMsize()
            builder.setOSVersionCode()
            builder.setLauncher()
        }
    }
}

//using different builders

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
