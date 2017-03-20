import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var result = ""

for (i, num) in arr.reversed().enumerated() {
    result += String(num)
    if i < arr.count - 1 {
        result += " "
    }
}

print(result)
