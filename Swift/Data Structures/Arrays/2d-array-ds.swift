import Foundation

var a = [[Int]]()
let matrixSize = 6
let hourglassOffset = 2
var max = -63

for _ in 0..<matrixSize {
    a.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

for i in 0..<matrixSize - hourglassOffset {
    var sum = 0
    for j in 0..<matrixSize - hourglassOffset {
        let top = a[i][j...j + hourglassOffset].reduce(0, +)
        let middle = a[i + 1][j + 1]
        let bottom = a[i + 2][j...j + hourglassOffset].reduce(0, +)
        let sum = top + middle + bottom
        if sum > max {
            max = sum
        }
    }
}

print(max)
