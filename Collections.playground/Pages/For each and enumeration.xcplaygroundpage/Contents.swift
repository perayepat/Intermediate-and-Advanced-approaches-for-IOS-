//: [Previous](@previous)

import Foundation

struct Movie{
    let title: String
    let genre: String
}


var movies = [Movie(title: "Lord of the rings", genre: "Fiction"),
              Movie(title: "ET", genre: "Fiction"),
              Movie(title: "Finding Nemo", genre: "Kids"),
              Movie(title: "Cars", genre: "Kids")]


// getting the index of each movie
movies.enumerated().forEach { (index, movie) in
    print("\(index + 1) - \(movie.title)")
}



//: [Next](@next)
