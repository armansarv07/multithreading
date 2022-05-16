class ListNode {
    var value: Int
    var next: ListNode?
    var prev: ListNode?
    
    init(value: Int) {
        self.value = value
    }
}


struct LinkedList: CustomStringConvertible {
    var head: ListNode?
    var tail: ListNode?
    
    mutating func append(value: Int) {
        let newNode = ListNode(value: value)
        if tail != nil {
            newNode.prev = tail
            tail?.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    func printList(head: ListNode?) {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? "")
            currentNode = currentNode?.next
        }
    }
}

var list = LinkedList()
list.append(value: 1)
list.append(value: 2)
list.append(value: 3)

list.printList(head: list.head)
