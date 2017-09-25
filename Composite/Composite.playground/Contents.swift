//: Playground - noun: a place where people can play

protocol CompositeObjectsProtocol {
    func getData() -> String
    func addComponent(aComponent: CompositeObjectsProtocol)
}

class Leaf: CompositeObjectsProtocol {
    var leafValue: String = ""
    
    func getData() -> String {
        return "Leaf value: \(leafValue)"
    }
    
    func addComponent(aComponent: CompositeObjectsProtocol) {
        print("This is a leaf, a branch can not be added to it")
    }
}

class Container: CompositeObjectsProtocol {
    var components = [CompositeObjectsProtocol]()
    func addComponent(aComponent: CompositeObjectsProtocol) {
        self.components.append(aComponent)
    }
    func getData() -> String {
        var valueToReturn = "\n<ContainersValue>\n"
        for obj in components {
            valueToReturn.append(contentsOf: obj.getData())
        }
        valueToReturn.append(contentsOf: "\n</ContainerValues>")
        return valueToReturn
    }
}

//Usage of Composate Design Pattern

let rootContainer = Container()
let leaf1 = Leaf()
leaf1.leafValue = "Level1 value"
rootContainer.addComponent(aComponent: leaf1)

let firstLevelContainer1 = Container()
let leaf2 = Leaf()
leaf2.leafValue = "level 2 value 1"
firstLevelContainer1.addComponent(aComponent: leaf2)
rootContainer.addComponent(aComponent: firstLevelContainer1)

let firstLevelContainer2 = Container()
let leaf3 = Leaf()
leaf3.leafValue = "Level 2 value 2"
firstLevelContainer2.addComponent(aComponent: leaf3)
rootContainer.addComponent(aComponent: firstLevelContainer2)

print(rootContainer.getData())