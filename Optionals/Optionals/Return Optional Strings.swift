import Foundation

struct UniStudent{
    let firstName: String?
    let lastName: String?
    
    var displayName: String? {
        switch (firstName, lastName){
        case let (first?, last?): return "\(first) \(last)"
        case let (first?, nil): return first
        case let (nil, last?): return last
        default: return nil
        }
    }
    
    func createGreetingMessage() -> String{
        let message = """
            Dear \(displayName ?? "Srudent"), welcome to swift
        """
        return message
    }
    
}

