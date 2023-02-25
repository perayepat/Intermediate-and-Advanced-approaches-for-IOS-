import Foundation

/// Creating  custom errors with swift
///
enum BankAccountError: Error{
    case insufficientFunds
    case accountClosed
}

class BankAcount{
    
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    /// Add throws if a function throws an error
    func withdraw(amount: Double) throws{
        if balance < amount{
            throw BankAccountError.insufficientFunds
        }
        balance -= amount
    }
}
