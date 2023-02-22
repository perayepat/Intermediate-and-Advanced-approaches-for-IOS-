import Foundation

class Car {
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    //Sets some defaults and allows the caller to set arguments when they want
    convenience init(make: String , model: String){
        self.init(make: make, model: model, color: "White")
    }
    
    
}
