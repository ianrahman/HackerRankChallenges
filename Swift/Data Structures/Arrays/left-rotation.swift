import Foundation

// declare initial values
let params = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = params[0]
let d = params[1]
let offset = d % n
var list = readLine()!.components(separatedBy: " ").map{ String($0)! }

// print result
print(list.dropFirst(offset).joined(separator: " ") + " " + list.dropLast(n - offset).joined(separator: " "))
