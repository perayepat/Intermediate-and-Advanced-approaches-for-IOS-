import Foundation

struct Grade{
    let gpa: Double?
    let letter :String?
}

struct GradStudent{
    let firstName: String
    let lastName: String
    let grade: Grade
}
