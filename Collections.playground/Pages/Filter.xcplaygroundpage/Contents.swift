//: [Previous](@previous)

import Foundation

let names = ["Alex", "John", "Steven", "Mary"]

let finalNames = names.filter { name in
    return name.count > 4
}

struct Movie{
    let title: String
    let genre: String
}

var movies = [Movie(title: "Lord of the rings", genre: "Fiction"),
              Movie(title: "ET", genre: "Fiction"),
              Movie(title: "Finding Nemo", genre: "Kids"),
              Movie(title: "Cars", genre: "Kids")]

let kisMovies = movies.filter { movie in
    return movie.genre == "Kids"
}

///Removing items
let movieToRemove = Movie(title: "Finding Nemo", genre: "Kids")

movies = movies.filter { movie in
    return movie.title != movieToRemove.title
}

for movie in movies {
    print(movie)
}
//: [Next](@next)
