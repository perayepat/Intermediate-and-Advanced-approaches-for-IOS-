import Foundation

enum UserAgreement: RawRepresentable{
    case accepted
    case rejected
    case notSet
    
    init?(rawValue: Bool?) {
        switch rawValue{
        case true? : self = .accepted
        case false? : self = .rejected
        default: self = .notSet
        }
    }
    
    var rawValue: Bool?{
        switch self {
        case .accepted: return true
        case .rejected: return false
        case .notSet: return nil
        }
    }
}
