import Foundation

struct Student: CustomStringConvertible{
    let firstName: String
    let lastName: String
    var middleName: String?
    var grade: String?
    
    var description: String{
        var studentDescription = "\(firstName),"
        if let middleName = middleName{
            //This is variable shadowing
            studentDescription += "\(middleName)"
        }
        
        if let grade = grade{
            studentDescription.append("  \(grade)")
        }
        return studentDescription
    }
}


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

//2
/*
func displayStudent(student: Student){
    
    guard let middleName = estudiante.middleName,
          let grade = estudiante.grade else { return}
    print(middleName,grade)
}
 */

