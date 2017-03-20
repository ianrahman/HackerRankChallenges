import Foundation

// define initial values
var lastAns = 0
let params = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let sequencesCount = params[0]
let queriesCount = params[1]
var seqList = [[Int]]()

// create necessary number of empty sequences
for _ in 0..<sequencesCount {
    seqList.append([Int]())
}

// define query types
enum QueryType: Int {
    case type1 = 1, type2
}

// read each query
for _ in 0..<queriesCount {

    // define temp values
    let query = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let x = query[1]
    let y = query[2]
    let xor = x ^ lastAns
    let index = (x ^ lastAns) % sequencesCount

    // perform query
    if let type = QueryType(rawValue: query[0]) {
        switch type {
        case .type1:
            seqList[index].append(y)
        case .type2:
            let size = seqList[index].count
            let value = seqList[index][y % size]
            lastAns = value
            print(lastAns)
        }
    }
}
