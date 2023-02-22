import Foundation

protocol CarType{
    init(make: String, model: String)
}
/// Adding Final meas you cannot subcalss and marks you classes so they can't be subclassed ,
/// When you don't want to inherit from the car class you use the final 

class Car : CarType{
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    //Sets some defaults and allows the caller to set arguments when they want
    /// Another way they are useful is using them with the init
    required convenience init(make: String , model: String){
        self.init(make: make, model: model, color: "White")
    }
    /*
    class func makeCart(make: String, model: String) -> Self {
        let car = self.init(make: make, model: model)
        
        return car
    }
     */
}
