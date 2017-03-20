import Foundation

// declare initial values
var counter = [String : Int]()
if let n = Int(readLine()!) {

    // add words to counter
    for _ in 0..<n {
        if let word = String(readLine()!) {
            if counter[word] != nil {
                counter[word]! += 1
            } else {
                counter[word] = 1
            }
        }
    }
}

// define number of queries
if let q = Int(readLine()!) {

    // run queries and print counts
    for _ in 0..<q {
        if let word =  String(readLine()!) {
            print(counter[word] ?? 0)
        }
    }
}
