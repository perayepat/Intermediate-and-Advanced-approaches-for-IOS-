import Foundation

struct Pizza  {
    let dough: String
    let toppings: [String]
}

enum PizzaBuilderError: Error{
    case doughBurnt
    case noToppings
}

struct PizzaBuilder{
    
    func prepare() -> Pizza? {
        do {
            let dough = try prepareDough()
            let toppings = try prepareToppings()
            return Pizza(dough: dough, toppings: toppings)
        } catch {
            print("Unable ot prepare pizza")
            return nil
        }
        
    }
    
    /*
     Errors will propogate from these private functions
     To the main funcitons where they will be caught and this is called error bubbling
     */
    private func prepareDough() throws -> String {
        // Prepare the dough
        
        throw PizzaBuilderError.doughBurnt
    }
    private func prepareToppings() throws -> [String] {
        // Prepare the toppings
        throw PizzaBuilderError.noToppings
    }
    
    
}
