class ListNode<T> {
    var value: T
    var next: ListNode?
    var previous: ListNode?
    
    init(value: T) {
        self.value = value
    }
}

struct LinkedList<T>: CustomStringConvertible {
    private var head: ListNode<T>?
    private var tail: ListNode<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: ListNode<T>? {
        return head
    }
    
    var last: ListNode<T>? {
        return tail
    }
    
    mutating func append(value: Int) {
        var newNode = ListNode(value: value)
        if tail != nil {
            newNode.previous = tail
            tail?.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node?.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
    
    func printList(head: ListNode?) {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? "")
            currentNode = currentNode?.next
        }
    }
    
    mutating func remove(node: ListNode) -> Int {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        if next == nil {
            tail = prev
        }
        node.previous = nil
        node.next = nil
        return node.value
    }
}

var list = LinkedList()
list.append(value: 1)
list.append(value: 2)
list.append(value: 3)
list.append(value: 4)
list.append(value: 5)
list.remove(node: list.head!)
list.description
list.printList(head: list.head)

var list2 = LinkedList()
