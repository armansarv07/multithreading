func getSum(array: [Int]) -> Int {
    var sum = 0
    for (_, item) in array.enumerated() {
        sum = sum + item
    }
    return sum
}
getSum(array: [1,4,6,8,4,6])


func getFirstElement(array: [Int]) -> Int {
    return array[0]
}

getFirstElement(array: [4,3,6,8,2,5,6])


func findFirstPair(array: [Int]) -> Int? {
    for i in 0 ..< array.count - 1  {
        for j in i + 1 ..< array.count  {
            if array[i] == array[j] {
                return array[i]
            }
        }
    }
    return nil
}

findFirstPair(array: [1,3,6,8,1,4,7,9,3,5])

// Drop the Constants

func foo(array: [Int], min: inout Int, max: inout Int) {
    for (_,item) in array.enumerated() {
        if item < min {
            min = item
        }
        if item < max {
            max = item
        }
    }
}

func foo1(array: [Int], min: inout Int, max: inout Int) {
    for (_,item) in array.enumerated() {
        if item < max {
            max = item
        }
    }
    for (_,item) in array.enumerated() {
        if item < min {
            min = item
        }
    }
}

// Drop the Non-Dominant Terms

func foo(arrayA: [Int], arrayB: [Int]) {
    for (_,item) in arrayA.enumerated() {
        print(item)
    }
    for (_,item) in arrayB.enumerated() {
        print(item)
    }
}

func foo1(arrayA: [Int], arrayB: [Int]) {
    for (_,_) in arrayA.enumerated() {
        for (_,item) in arrayB.enumerated() {
            print(item)
        }
    }
    
    for (_,item) in arrayA.enumerated() {
        print(item)
    }
}

func getTwoSum(array: [Int], target: Int) -> [Int] {
    var array: [Int] = []
    for (i, item) in array.enumerated() {
        for (j, number) in array.enumerated() {
            
        }
    }
    return array
}

getTwoSum(array: [4,6,2,6,8,2,5,7,3], target: 12)

