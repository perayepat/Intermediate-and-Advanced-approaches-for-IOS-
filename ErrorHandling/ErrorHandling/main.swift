import Foundation

//MARK: - Throwing errors example 1

let account = BankAcount(balance: 100.50)

/// accounting for the error

do {
    try account.withdraw(amount: 300)
} catch {
    print(error)
}

