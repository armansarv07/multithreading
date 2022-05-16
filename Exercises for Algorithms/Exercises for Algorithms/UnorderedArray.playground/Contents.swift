import Darwin
func findUnsortedArray(array: [Int]) -> Int {
    let n = array.count
    
    var end = 0
    var start = 1
    
    var maxNum = array[0]
    var minNum = array[n - 1]
    
    for (index, currentItem) in array.enumerated() {
        maxNum = max(maxNum, currentItem)
        if currentItem < maxNum {
            end = index
        }
    }
    
    for (index, currentItem) in array.enumerated() {
        minNum = min(minNum, array[n - 1 - index])
        if array[n - 1 - index] > minNum {
            start = n - 1 - index
        }
    }
    return end - start + 1
}

findUnsortedArray(array: [1, 4, 2, 3, 2, 6])
findUnsortedArray(array: [1, 1])
findUnsortedArray(array: [3, 6 , 8, 2, 4, 7, 2, 7, 23, 65])
