//: [Previous](@previous)

import Foundation
/// The zip fucntion can take two different sequences and paiur them together but if the arrays are no the same length it will take the smaller array
let students = ["Alex", "Mary", "John", "Steven"]
let grades = [3.4, 2.8, 4.0, 3.0]

///We want to iterate through both of these arrays and create a pairing
let pair = zip(students, grades)

for studentsAndGrade in pair {
    print(studentsAndGrade.0)
    print(studentsAndGrade.1)
}

//: [Next](@next)
