// Linked List
// 3 -> 5 -> 2 -> nil

class ListNode {
    var value: Int
    var next: ListNode?
    
    init(value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = ListNode(value: 2, next: nil)
let secondNode = ListNode(value: 5, next: thirdNode)
let oneNode = ListNode(value: 3, next: secondNode)


func printList(head: ListNode?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

printList(head: oneNode)


// Reverse LinkedList
// Time: O(N)

func reverseList(head: ListNode?) -> ListNode? {
    var currentNode = head
    
    var next: ListNode?
    var prev: ListNode?
    
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    return prev
}
