import Foundation

let hello1 = {
    print("Hello")
}

let hell02: (String) -> () = { name in
    print("Hello \(name)")
}

let hell03: (String) -> () = { print("Hell0 \($0)")}

hell03("Yeat")

// Closure that returns a value
/// Takes in two values and multiples them once done it returns them as one variable
let pow: (Int, Int) -> Int = { number, times in
    number * times
}
// if you don't care about the input names
let pow2: (Int, Int) -> Int = { $0 * $1 }

let result = pow(5,2)
//MARK: - Closures in arrays
///Without the @escaping we cant use the closure after the function returns
///Any async action can take a bit of time and the @escaping allows us to fire the closure in the future
func getPosts(completion: @escaping ([String]) -> ()){
    var posts: [String] =  []
    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
        posts = ["Hello World", "Intro to closures"]
        completion(posts)
    }
}

getPosts{print($0)}
