import Foundation

enum ValidationError: Error{
    case noEmptyValueAllowed
    case invalidEmail
}

class Validation{
    
    func validateEmail(_ email: String) throws {
        
        guard !email.isEmpty else {
            throw ValidationError.noEmptyValueAllowed
        }
        
        /// This is only one way of validating email types
        let pattern = "[A-z0-9a-z._%+-]+@[A-Za0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        
        ///Testing the email against this returns a true or false
        let isValid = emailPredicate.evaluate(with: email)
        if !isValid {
            throw ValidationError.invalidEmail
        }
    }
}
