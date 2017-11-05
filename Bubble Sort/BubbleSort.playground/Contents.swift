//: Playground - noun: a place where people can play

import UIKit

var sampleArray:Array = [0,1,8,13,7,5,25,10,2,18]

print("This is the array before bubbleSort: \(sampleArray)")

func bubbleSort(array:inout [Int]) {
    
    var arrayCount = array.count
    
    for i in 0...arrayCount {
        
        // Check if the first element is less than the second element
        // If a < b, then check the next element
        // Else, swap the two elements
        // End when the entire array is in-order
        for j in 1...arrayCount-1 {
            if array[j-1] > array[j] {
                let largerValue = array[j-1]
                array[j-1] = array[j]
                array[j] = largerValue
            }
        }
    }
}

bubbleSort(array: &sampleArray)
print("This is the array AFTER bubbleSort: \(sampleArray)")


/* The inout keyword changes the array to be passed by reference instead of by value and changes it from being implicitly defined with let to defined with var, which means the array is now mutable, and changes to the array are seen by the caller.
 
 https://stackoverflow.com/questions/25511297/bubble-sorting-an-array-in-swift-compiler-error-on-swap
 */
