import Foundation

var estudiante = Student(firstName: "Jeoung", lastName: "Gou")

estudiante.middleName = "Joungshon"
estudiante.grade = "A"

var uniStudent = UniStudent(firstName: nil, lastName: nil)

print(uniStudent.createGreetingMessage())

let gradStudent = GradStudent(firstName: "Jing", lastName: "Gou", grade: Grade(gpa: 4.2, letter: "A"))


