//: [Previous](@previous)

import Foundation

/// We want to assign the user id to users with names using the inout
struct User{
    var userId: Int?
    var name: String
}

func saveUser(_ user: inout User){
    user.userId = 100
}

var user = User(name: "Jong Gou")
saveUser(&user)
print(user)
//: [Next](@next)
