class Node {
    let value: Int
    let leftChild: Node?
    let rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
// left branch
let secondNode = Node(value: 2, leftChild: nil, rightChild: nil)
let sixNode = Node(value: 6, leftChild: secondNode, rightChild: nil)
// right branch
let thirteenNode = Node(value: 13, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fifteenNode = Node(value: 15, leftChild: thirteenNode, rightChild: thirteenNode)

let headNode = Node(value: 12, leftChild: sixNode, rightChild: fifteenNode)

func search(node: Node?, searchValue: Int) -> Bool {
    if node == nil { return false }
    if node?.value == searchValue { return true }
    else if searchValue < node!.value {
        return search(node: node?.leftChild, searchValue: searchValue)
    } else {
        return search(node: node?.rightChild, searchValue: searchValue)
    }
    
}

search(node: headNode, searchValue: 44)
