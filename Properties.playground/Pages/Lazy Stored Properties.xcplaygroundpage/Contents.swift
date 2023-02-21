import Foundation
//MARK: - Scenario
/// Building an app for a school system with exams
enum Level{
    case easy
    case medium
    case hard
}

struct Exam{
    var level: Level
    
    var questions: [String]{
        //simulate time to get from API
        sleep(5)
        switch level{
        case .easy:
            return ["What is 1+2","What is a question"]
        case .medium:
            return ["What is 1 X 2","Why does it rain"]
        case .hard:
            return ["What is 8 / 2 ", "When does conciousness form"]
        }
    }
}

let exam = Exam(level: .easy)
print(exam.questions)

