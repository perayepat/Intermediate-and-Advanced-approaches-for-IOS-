import Foundation

struct Session{
    let title: String
    let speaker: String
    let date: Date
    let isKeynote: Bool
    let isWorkshop: Bool
    let isRecorded: Bool
    let isNormal: Bool
    let isJoinSession: Bool
    var jointSpeakers: [String]?
}

let session  = Session(title: "Intro to swift",
                       speaker: "Jung Goui",
                       date: .now,
                       isKeynote: false,
                       isWorkshop: false,
                       isRecorded: true,
                       isNormal: true,
                       isJoinSession: false)


//MARK: - Replacing this struct with an Enum

enum Sessions{
    case keynote(title: String, speaker: String,date: Date, isRecorded: Bool)
    case normal(title: String, speaker: String, date: Date)
    case workshop(title: String, speaker: String, date: Date, isRecorded: Bool)
    case joint(title:String, speakers: [String], date:Date)
}

func displaySession(session: Sessions){
    switch session{
    case .keynote(title: let title, speaker: let speaker, date: let date, isRecorded: let isRecorded):
        print("\(title) - \(speaker) - \(date) - \(isRecorded) ")
    case .normal(title: let title, speaker: let speaker, date: let date):
        print("\(title) - \(speaker) - \(date) ")
    case .workshop(title: let title, speaker: let speaker, date: let date, isRecorded: let isRecorded):
        print("\(title) - \(speaker) - \(date) - \(isRecorded) ")
    default:
        print("")
    }
    
    if case let Sessions.keynote(title:  title, speaker:  speaker, date:  date, isRecorded:  isRecorded) = session {
        print("It is a keynote")
    }
}

let secondKeynote = Sessions.keynote(title: "WWDC ", speaker: "Tim", date: Date(), isRecorded: true)

