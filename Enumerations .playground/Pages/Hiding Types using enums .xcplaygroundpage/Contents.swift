import Foundation
/// We want to use poly morphism with enums
struct Teacher {
    let name: String
    let courses: [String]
}

struct Student {
    let name: String
    let courses: [String]
    var grade: String?
}

let teacher = Teacher(name: "John Doe", courses: ["Math", "Science"])
let student = Student(name: "Patrick Hoffman", courses: ["Math", "History"])

let users: [Any] = [teacher, student]

//for user in users {
//    switch user{
//    case let user as Student:
//        print(user.grade ?? "")
//    case let user as Teacher:
//        print(user.courses ?? "")
//    default:
//        print("Not student or teacher")
//    }
//}

//MARK: - Using an enum
/// We have used poly morphism
/// each item of allUsers is of type user 
enum User: Equatable{
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.self == rhs.self
    }
    
    case teacher(Teacher)
    case student(Student)
}
/// This array is now of type user
let allUsers = [User.teacher(teacher), User.student(student)]


for user in allUsers{
    switch user{
    case .student(let student):
        print(student.courses )
    case .teacher(let teacher):
        if allUsers.contains(where: {$0 == User.teacher(teacher)}){
            print("found")
        }
    }
}

print(allUsers.count)

//if i == self.upcomingTimes.count - 1 {
//    TrainTimeCard(departureTime: upcomingTimes[i].time ?? "" , numberOfCars: upcomingTimes[i].numberOfCars ?? "" )
//        .listRowSeparator(.hidden)
//        .onAppear {
//            if viewModel.isLastTrain {
//                // No more trains
//            } else {
//                viewModel.loadMoreTrains()
//            }
//        }
//        .onTapGesture {
//            chosenTimeIndex = i
//            showDetailView = true
//        }
//        .overlay(alignment: .bottom){
//            if viewModel.shouldShowListGenericError || viewModel.shouldShowListGenericError {
//               UpcomingTimesListError(viewModel: viewModel)
//            } else if viewModel.shouldShowTimeLoading {
//                ProgressView()
//                    .frame(width: UIScreen.main.bounds.width ,height: 52)
//                    .background {
//                        Rectangle()
//                            .foregroundColor(Color("DefaultLightAndDark"))
//                    }
//            }
//        }
//.listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
//} else {
//    TrainTimeCard(departureTime: upcomingTimes[i].time ?? "" , numberOfCars: upcomingTimes[i].numberOfCars ?? "")
//        .listRowSeparator(.hidden)
//        .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
//}
