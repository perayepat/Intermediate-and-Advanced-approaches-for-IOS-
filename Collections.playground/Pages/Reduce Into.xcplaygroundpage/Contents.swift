import Foundation

let ratings = [4, 8.5, 9.5, 2, 6, 3, 5.5, 7, 2.8, 9.8, 5.9, 1.5]
/// We want to take these ratings and convert them into a dictionary where we can see how many bad and good reatings we have based on the ratings array using the reduce function

let results = ratings.reduce(into: [:]) { (results: inout [String: Int], rating: Double) in
    ///Using into means its going to change the results but using inout to change the results
    ///Using ranges to categorise the movies into the proper rating
    switch rating {
    case 1..<4: results["Very bad", default: 0] += 1
    case 4..<6: results["Ok", default: 0] += 1
    case 6..<8: results["Good", default: 0] += 1
    case 8..<11: results["Excellent", default: 0] += 1
    default: break
    }
    
}

print(results)

