//: Playground - noun: a place where people can play

import UIKit

protocol Coffee {
    func getCost() -> Int
    func getIngredients() -> String
}

class SimpleCoffee: Coffee {
    func getCost() -> Int {
        return 60
    }
    
    func getIngredients() -> String {
        return "Coffee"
    }
}

class CoffeeDecorator: Coffee {
    let decoratedCoffee: Coffee
    let ingerientSeparator: String = ", "
    
    required init(decoratedCoffee: Coffee) {
        self.decoratedCoffee = decoratedCoffee
    }
    
    func getCost() -> Int {
        return self.decoratedCoffee.getCost()
    }
    
    func getIngredients() -> String {
        return self.decoratedCoffee.getIngredients()
    }
}


class Milk:CoffeeDecorator {
    
    required init(decoratedCoffee: Coffee) {
        super.init(decoratedCoffee: decoratedCoffee)
    }
    
    override func getCost() -> Int {
        return super.decoratedCoffee.getCost() + 20
    }
    
    override func getIngredients() -> String {
        return super.decoratedCoffee.getIngredients() + ingerientSeparator + "Milk"
    }
}

class WhipCoffee: CoffeeDecorator {
    required init(decoratedCoffee: Coffee) {
        super.init(decoratedCoffee: decoratedCoffee)
    }
    
    override func getCost() -> Int {
        return super.decoratedCoffee.getCost() + 25
    }
    
    override func getIngredients() -> String {
        return super.decoratedCoffee.getIngredients() + ingerientSeparator + "Whip"
    }
}

var someCoffee = SimpleCoffee()
print("Стоимость напитка: \(someCoffee.getCost()), а ингредиенты: \(someCoffee.getIngredients())")
let milkCoffee = Milk(decoratedCoffee: someCoffee)
print("Стоимость напитка: \(milkCoffee.getCost()), а ингредиенты: \(milkCoffee.getIngredients())")
let premiumCoffee = WhipCoffee(decoratedCoffee: milkCoffee)
print("Стоимость напитка: \(premiumCoffee.getCost()), а ингредиенты: \(premiumCoffee.getIngredients())")

