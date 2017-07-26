//: Playground - noun: a place where people can play
import UIKit

protocol Product {
    var name :String {get set}
    func getName() -> String
}

class ConcreteProductA: Product {
    var name: String = "Concrete Product A"
    
    func getName() -> String {
        return self.name
    }
}

class ConcreteProductB: Product {
    var name: String = "Concrete Product B"
    
    func getName()-> String {
        return self.name
    }
    
}

protocol Creator {
    func factoryMethod() -> Product
}

class ConcreteCreatorA : Creator {
    func factoryMethod() -> Product  {
        var product = ConcreteProductA()
        return product
    }
}

class ConcreteCreatorB : Creator {
    func factoryMethod() -> Product {
        var product = ConcreteProductB()
        return product
    }
}

let creators: [Creator] = [ConcreteCreatorA(), ConcreteCreatorB()]

for creator in creators {
    var product = creator.factoryMethod()
    print("Product Name = \(product.getName())")
    
}
