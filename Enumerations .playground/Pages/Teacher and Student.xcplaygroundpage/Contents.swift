import Foundation

//class User{
//    var name: String
//    var isFullTime: Bool
//
//    init(name: String, isFullTime: Bool) {
//        self.name = name
//        self.isFullTime = isFullTime
//    }
//}
//
//class Staff: User{
//    /// If we're making this application for an elementary school the base class inherited isn't applicable to this class
//    /// For a Universtiy or College this is ok
//}
//
//class Teacher: User {
//    var courses: [String]
//
//     init(name: String, courses: [String], isFullTime: Bool) {
//        self.courses = courses
//        super.init(name: name, isFullTime: isFullTime)
//    }
//}
//
//class Student: User {
//    var courses: [String]
//
//     init(name: String, courses: [String], isFullTime: Bool) {
//        self.courses = courses
//        super.init(name: name, isFullTime: isFullTime)
//    }
//}
//
///// The super approach has corned us

struct Student{
    let name: String
    let courses: [String]
    let isFullTime: Bool
}

struct Teacher{
    let name: String
    let courses: [String]
    let isFullTime: Bool
}

/// For primary staff cannot courses
struct Staff{
    let name: String
    let isFullTime: Bool
}

struct International{
    let name: String
    let courses: [String]
    let isFullTime: Bool
    let countryOfOrigin: String
}

/// This allows extenstion to be done easier and more simple
enum User{
    case student(Student)
    case teacher(Teacher)
    case staff(Staff)
    case international(International)
}

func updateProfile(user: User){
    switch user{
    case .student(let student):
        print(student)
    case .teacher(let teacher):
        print(teacher)
    case .staff(let staff):
        print(staff)
    case .international(let international):
        print(international)
    }
}

updateProfile(user: User.staff(Staff(name: "Jung Gou", isFullTime: false)))

/// For structs where you may have the same base types but additions will change each struct slighty associated types are for this situation
