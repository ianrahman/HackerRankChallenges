import Foundation

// read the integer n
let n = Int(readLine()!)!

// print the staircase
for i in 1...n {
    let spaceCount = n - i
    var spaces = ""
    var hashes = ""
    for j in 0..<spaceCount {
        spaces += " "
    }
    for k in 1...i {
        hashes += "#"
    }
    print(spaces+hashes)
}
