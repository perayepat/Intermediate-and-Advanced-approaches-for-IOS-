import Foundation

/// How do you fire off another action when you set a variable in your code
struct Website{
    
    init(url: String) {
        //USing
        defer { self.url = url}
        self.url = url
    }
    
    var url: String{
        willSet{
            newValue
        }
        /// when we set this property fire off code somewhere else
        didSet{
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url
        }
    }
}

var website = Website(url: "www.movies.com/?search=J J K")
print(website)

