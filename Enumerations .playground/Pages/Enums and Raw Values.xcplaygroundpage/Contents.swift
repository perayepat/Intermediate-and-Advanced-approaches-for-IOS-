import Foundation

enum NetworkError: Error{
    case badURL
    case decoddingError
}

enum TempratureUnit: String{
    case imperial = "fahrenheit"
    case metric = "celsius"
}

func getWeather(unit: TempratureUnit) throws {
    guard let url = URL(string: "www.weather.com/?unit=\(unit.rawValue)") else {
        throw NetworkError.badURL
    }
    print(url)    
}

/// do and catch becuse marked with throws
do {
    try getWeather(unit: .imperial)
} catch {
    print(error)
}
