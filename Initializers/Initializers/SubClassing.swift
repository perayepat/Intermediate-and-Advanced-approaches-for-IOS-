import Foundation

class Teslsa: Car{
    var range: Double

    ///By creating our own initializer in a class that's inheriting we loose the convience init and the base one
    ///By Overidding you get the convience init back 
    override init(make: String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
     
}
