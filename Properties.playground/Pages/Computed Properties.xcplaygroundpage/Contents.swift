import Foundation
/// Instead of calculating the difference in the workout you can turn that into a computed property
struct Workout{
    let startTime: Date
    let endTime: Date
    
    var timeElapsed: TimeInterval {
        endTime.timeIntervalSince(startTime)
    }
}

let start = Date()
sleep(5)
let end = Date()

let workout = Workout(startTime: start, endTime: end)
//print(workout.endTime.timeIntervalSince(workout.startTime))
//Using a computed variable
print(workout.timeElapsed)
