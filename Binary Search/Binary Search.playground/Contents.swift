//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,4,5,7,8,10,13,15,17,18,19,20]

func binarySearch(array: [Int], numberSearchValue: Int) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
    
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]),\(array[rightIndex])]")
        
        if middleValue == numberSearchValue {
            return true
        }
        
        if numberSearchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if numberSearchValue > middleValue {
            leftIndex = middleIndex + 1
        }
        
    }
    
    return false
}

print(binarySearch(array: numbers, numberSearchValue: 20))
