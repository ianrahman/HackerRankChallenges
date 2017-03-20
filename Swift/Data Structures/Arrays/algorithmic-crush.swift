import Foundation

// declare initial values
let params = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = params[0]
let m = params[1]
var list = [Int]()

for _ in 0...n {
    list.append(0)
}

// perform each operation
for _ in 0..<m {

    // parse operation
    let operation = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let a = operation[0]
    let b = operation[1]
    let k = operation[2]

    // mark beginning of incremented range
    list[a - 1] += k

    // mark end of incremented range
    list[b] -= k
}

// sum changes to determine max
var temp = 0
var max = 0
list.map({temp += $0; if temp > max {max = temp}})
print(max)
