//: [Previous](@previous)

import Foundation

struct Pizza {
    let sauce: String
    let toppings: [String]
    let crust: String
}

class PizzaBuilder{
    func prepare() -> Pizza {
        
        func prepareSauce() -> String{
            return "Tomato Sauce"
        }
        func prepareCrust() -> String{
            return "Thin"
        }
        func prepareToppings() -> [String]{
            return ["Chicken", "Mushrooms"]
        }
        
        let sauce = prepareSauce()
        let crust = prepareCrust()
        let toppings = prepareToppings()
        
        return Pizza(sauce: sauce, toppings: toppings, crust:crust)
    }
    
}

let pizzaBuilder = PizzaBuilder()
let pizza = pizzaBuilder.prepare()

//: [Next](@next)
