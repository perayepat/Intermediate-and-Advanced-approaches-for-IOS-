import Foundation

class User{
    var name: String
    var isFullTime: Bool
    
    init(name: String, isFullTime: Bool) {
        self.name = name
        self.isFullTime = isFullTime
    }
}

class Staff: User{
    /// If we're making this application for an elementary school the base class inherited isn't applicable to this class
    /// For a Universtiy or College this is ok
}
 
class Teacher: User {
    var courses: [String]
    
     init(name: String, courses: [String], isFullTime: Bool) {
        self.courses = courses
        super.init(name: name, isFullTime: isFullTime)
    }
}

class Student: User {
    var courses: [String]
    
     init(name: String, courses: [String], isFullTime: Bool) {
        self.courses = courses
        super.init(name: name, isFullTime: isFullTime)
    }
}

/// The super approach has corned us 
