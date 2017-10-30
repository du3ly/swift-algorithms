// Run through a list of numbers and print the following:
// "fizz" when divisible by 3
// "buzz" when divisible by 5
// "fizzbuzz" when divisible by both 3 and 5

import UIKit

var oneThousandNumbers = [Int]()
for i in 1...1000 {
    oneThousandNumbers.append(i)
}

for num in oneThousandNumbers {
    if num % 15 == 0 { // easier to mod with the value of 15 because 3*5, otherwise need the && operator
        print("\(num) fizzbuzz")
    } else if num % 3 == 0 {
        print("\(num) fizz")
    } else if num % 5 == 0 {
        print("\(num) buzz")
    }
}
