//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,4,5,7,8,10]

func linearSearch(array: [Int], numberSearchValue: Int) -> Bool {
    for num in array {
        if num == numberSearchValue {
            return true
        }
    }
    return false
}

print(linearSearch(array: numbers, numberSearchValue: 4))
