import Foundation

//MARK: - Throwing errors example 1

//let account = BankAcount(balance: 100.50)
//
///// accounting for the error
//
//do {
//    try account.withdraw(amount: 300)
//} catch {
//    print(error)
//}

//MARK: - Throwing Networking Errors
//let networking = Networking()
//
//print("Running Network")
//networking.getPosts { (result) in
//    switch result {
//    case .success(let posts):
//        print(posts)
//        print("In Progress")
//    case .failure(let error):
//        print(error)
//    }
//}

//MARK: - Validating user email

let validation = Validation()
// 
//do {
//    try validation.validateEmail("jungDoube@gmail.com")
//    print("Email is valid")
//}catch{
//    print(error)
//}

// exposing our type and using validation in the initializer
// This means we are interested in
do {
    let email = try Email("jungDoube@gmail.com")
    print(email)
} catch {
    print(error)
}

// We arent interested in the error we get and we return nill
let email = try? Email("Jibly.com")
print(email)
