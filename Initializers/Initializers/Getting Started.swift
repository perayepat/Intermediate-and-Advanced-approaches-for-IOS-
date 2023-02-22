import Foundation

struct Student {
    let FirstName: String
    let lastName: String
    let grade: String
}

/// Using extensions allow you to keep the default initialiser in the structs
extension Student{
    init(FirstName: String, lastName: String) {
        self.FirstName = FirstName
        self.lastName = lastName
        self.grade = ""
    }
}

