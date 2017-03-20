import Foundation

// Read input
let s = readLine()!

// separate components
var timeArr = s.components(separatedBy: ":")

// find time period
let index = timeArr[2].index(timeArr[2].startIndex, offsetBy: 2)
let period = timeArr[2].substring(from: index)

// assign component variables
var hours = timeArr[0]
let minutes = timeArr[1]
let seconds = timeArr[2].substring(to: index)

// adjust hours and remove period from seconds
switch period {
case "AM":
    if Int(hours)! == 12 {
        hours = "00"
    }
default:
    if Int(hours)! != 12 {
        hours = String(Int(hours)! + 12)
    }
}

// recombine components
print("\(hours):\(minutes):\(seconds)")
