import Foundation

struct Student {
    let FirstName: String
    let lastName: String
    let grade: String
}


extension Student{
    init(FirstName: String, lastName: String) {
        self.FirstName = FirstName
        self.lastName = lastName
        self.grade = ""
    }
}

