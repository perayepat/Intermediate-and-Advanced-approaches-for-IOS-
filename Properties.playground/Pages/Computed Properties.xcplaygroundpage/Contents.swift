import Foundation
/// Instead of calculating the difference in the workout you can turn that into a computed property
struct Workout{
    let startTime: Date
    let endTime: Date
    
    var timeElapsed: TimeInterval {
        endTime.timeIntervalSince(startTime)
    }
}

let start = Date()
sleep(5)
let end = Date()

let workout = Workout(startTime: start, endTime: end)
//print(workout.endTime.timeIntervalSince(workout.startTime))
//Using a computed variable
//print(workout.timeElapsed)

//MARK: - Example 2
/// how do we calculate the total of our cart , using a computed property
struct CartItem {
    let name: String
    let price: Double
}

struct Cart{
    let items: [CartItem]
    var total: Double {
        items.reduce(0){
            // this allows us to get a running total
            return $0 + $1.price
        }
    }
}

let items = [CartItem(name: "Bread" ,price: 4.50),CartItem(name: "Mild" ,price: 5.50), CartItem(name: "Cheese(Mortadelle)" ,price: 6.50)]

let cart = Cart(items: items)
print(cart.total)


