import Foundation

struct Post: Decodable{
    let title: String
    let body: String
}

enum NetworkError: Error{
    case badURL
    case decodingError
    case badRequest
    case noData
    case custom(Error)
}

class Networking {
    
    /// The result allows you to work with the success and the error handling
    func getPosts(completion: @escaping (Result<[Post], NetworkError>) -> Void ){
        
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/posts") else {
            completion(.failure(.badURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                completion(.failure(.custom(error))) //Unknown error
            } else if (response as? HTTPURLResponse)?.statusCode != 200 {
                completion(.failure(.badRequest))
            } else {
                guard let data = data else {
                    completion(.failure(.noData))
                    return
                }
                
                //Now we have data
                let posts = try? JSONDecoder().decode([Post].self, from: data)
                if let posts = posts{ /// variable shadowing
                    completion(.success(posts))
                    print(posts)
                } else {
                    completion(.failure(.decodingError))
                }
            }
        }.resume()
    }
}
