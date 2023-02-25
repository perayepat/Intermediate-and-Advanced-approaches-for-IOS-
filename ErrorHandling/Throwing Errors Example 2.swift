import Foundation

struct Post: Decodable{
    let title: String
    let body: String
}

enum NetworkError: Error{
    
}

class Networking {
    
    func getPosts(completion: @escaping (Result<[Post], NetworkError>) -> Void ){
        
    }
}
