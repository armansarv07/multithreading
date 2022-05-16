func minesweeper(bombs: [[Int]], rows: Int, columns: Int) -> [[Int]] {
    var field = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    
    for bomb in bombs {
        let row = bomb[0]; let column = bomb[1]
        field[row][column] = -1
        
        for i in row - 1...row + 1 {
            for j in column - 1...column + 1 {
                if (0 <= i) && (i < rows) && (0 <= j) && (j < columns) && (field[i][j] != -1) {
                    field[i][j] += 1
                }
            }
        }
    }
    return field
}

var field = minesweeper(bombs: [[0,4],[3,1]], rows: 4, columns: 5)
field.map { array in
    print(array)
}


// Extended minesweeper game

func click(field: inout [[Int]], givenI: Int, givenJ: Int) -> [[Int]] {
    var queue = Queue<Int>()
    let rows = field.count
    let columns = field.first?.count
    
    if field[givenI][givenJ] == 0 {
        field[givenI][givenJ] = -2
        queue.enqueue(element: [givenI, givenJ])
    } else { return field }
    
    while !queue.list.isEmpty {
        let position = queue.dequeue()
        for i in position?.first - 1...position?.first + 1 {
            for j in position?.last - 1...position?.last + 1 {
                
            }
        }
    }
    
    return field
}

let newField = click(field: &field, givenI: 2, givenJ: 3)
print("----------------")
newField.map { array in
    print(array)
}
