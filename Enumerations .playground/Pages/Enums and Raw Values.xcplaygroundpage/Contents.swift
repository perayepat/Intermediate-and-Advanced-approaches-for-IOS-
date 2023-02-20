import Foundation

//enum NetworkError: Error{
//    case badURL
//    case decoddingError
//}
//
///// When working with API's updating these raw values may not work as the api might get this api from somewhere else and that might get chagned
///// Sometimes the rawvalues change and this may change thow the api works in the future, now you have to avoid
//enum TempratureUnit: String{
//    case imperial = "F"
//    case metric = "C"
//}
//
/////This will allow you to use the enum you get from a service or a third party fram work and change them
//private func getWeatherURL(unit: TempratureUnit) -> URL? {
//    switch unit{
//    case .imperial:
//        return URL(string: "www.weather.com/?unit=fahrenheit")
//    case .metric:
//        return URL(string: "www.weather.com/?unit=celcius")
//    }
//}
//
//func getWeather(unit: TempratureUnit) throws {
//    guard let weatherURL = getWeatherURL(unit: unit) else {
//        throw NetworkError.badURL
//    }
//    print(weatherURL)
//}
//
///// do and catch becuse marked with throws
//do {
//    try getWeather(unit: .imperial)
//} catch {
//    print(error)
//}

//MARK: - From the swift in depth book

enum ImageType: String {
    case jpg
    case bmp
    case png
}

func iconName(for fileExtension: String) -> String{
//    switch fileExtension{
//    case "jpg": return "assetJPG"
//    case "bmp": return "assetBMP"
//    case "png": return "assetPNG"
//    default: return "assetUnknown"
//    }
    
    guard let imageType = ImageType(rawValue: fileExtension) else {
        return "assetUnknown"
    }
    
    switch imageType{
    case .jpg: return "assetJPG"
    case .bmp: return "assetBMP"
    case .png: return "assetPNG"
    }
}

iconName(for: "jpg")
iconName(for: "jpeg")
