import Foundation
//MARK: - Scenario
/// Building an app for a school system with exams
/// Because we are using a lazy property the wait isnt presernt
///
/// Lazy properties are only initialized when you are trying to access them not when they're initialized 
enum Level{
    case easy
    case medium
    case hard
}

struct Exam{
    var level: Level
    
    lazy private(set) var questions :[String] = {
        //simulate time to get from API
        sleep(4)
        switch level{
        case .easy:
            return ["What is 1+2","What is a question"]
        case .medium:
            return ["What is 1 X 2","Why does it rain"]
        case .hard:
            return ["What is 8 / 2 ", "When does conciousness form"]
        }
    }()
}

// Because it's a lazy property once it's intialized it cant be changed

var exam = Exam(level: .easy)
//print(exam.questions)
// Creating a copy of the exam
var hardExam = exam
hardExam.level = .hard
print(hardExam.questions)
print("Wait for a second love")
sleep(2)
print(exam.questions)

