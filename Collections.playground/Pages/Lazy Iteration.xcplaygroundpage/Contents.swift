//: [Previous](@previous)

import Foundation

let indexes = 1..<5000

let images = indexes.lazy.filter{ index -> Bool in
    print("[Filter]")
    return index % 2 == 0
}.map { index -> String in
    print("[Map]")
    return "image_\(index)"
}

var chosenImages = images.suffix(3)
for image in chosenImages {
    print(image)
}

print(images.suffix(3))


//: [Next](@next)
