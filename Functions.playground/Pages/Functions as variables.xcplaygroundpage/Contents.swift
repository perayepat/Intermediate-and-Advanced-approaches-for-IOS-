import Foundation

let hello1 = {
    print("Hello")
}

let hell02: (String) -> () = { name in
    print("Hello \(name)")
}

let hell03: (String) -> () = { print("Hell0 \($0)")}
