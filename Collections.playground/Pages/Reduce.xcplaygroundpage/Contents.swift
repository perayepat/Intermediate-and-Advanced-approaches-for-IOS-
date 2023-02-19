//: [Previous](@previous)
import Foundation

struct Item{
    let name: String
    let price: Double
}

struct Cart{
    private(set) var items: [Item] = []
    
    mutating func addItem(_ item: Item){
        items.append(item)
    }
    
    /// reduce takes the values from the array an turns them into one value
    var total: Double{
        items.reduce(0){(value, item) -> Double in
            value + item.price
        }
    }
}

var cart = Cart()
cart.addItem(Item(name:"Milk", price: 4.50))
cart.addItem(Item(name:"Bread", price: 3.50))
cart.addItem(Item(name:"Milk", price: 4.50))

print(cart.total)

let items = [2.0,2.5,2.5,2.56,5.6]
let total = items.reduce(0, +)

//: [Next](@next)
