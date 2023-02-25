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
        let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        
        ///Testing the email against this returns a true or false
        let isValid = emailPredicate.evaluate(with: email)
        if !isValid {
            throw ValidationError.invalidEmail
        }
    }
}
/*
 Avoiding calling the validate email constantly over and over
 */
struct Email{
    let text: String
    init(_ text: String)throws {
        
        guard !text.isEmpty else {
            throw ValidationError.noEmptyValueAllowed
        }
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        let isValid = emailPredicate.evaluate(with: text)
        if isValid{
            self.text = text
        } else {
            throw ValidationError.invalidEmail
        }
    }
}
