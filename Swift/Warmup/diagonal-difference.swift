import Foundation

// read the integer n
let n = Int(readLine()!)!

// declare 2d array
var arr: [[Int]] = []

// read array row-by-row
for _ in 0..<n {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

// sum the diagonals
var diagonalA: Int = 0
var diagonalB: Int = 0
let flat = arr.flatMap({$0})
for m in 0..<n {
    let x = m*n+m
    let y = (n*(m+1))-m-1
    diagonalA += flat[x]
    diagonalB += flat[y]
}

// find the difference
let diff = abs(diagonalB-diagonalA)

// print the result
print(diff)
