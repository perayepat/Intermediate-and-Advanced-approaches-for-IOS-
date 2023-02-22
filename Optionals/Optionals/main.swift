import Foundation

var estudiante = Student(firstName: "Jeoung", lastName: "Gou")

estudiante.middleName = "Joungshon"
estudiante.grade = "A"

//1, if let
/// Can be used to unwrap multiple optionals
/// only unrwrapped when both are unwrapped successfuly
/*
if let middleName = estudiante.middleName ,
   let grade = estudiante.grade{
    print(middleName)
    print(grade)
}
*/

print(estudiante.middleName)


