struct Queue<T>: CustomStringConvertible {
    private var list = LinkedList<T>()
    
    mutating func enqueue(element: T) {
        list.append(value: element)
    }
    
    mutating func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else { return nil }
        list.remove(node: element)
        return element.value
    }
    
    var description: String {
        return list.description
    }
}

var queue = Queue<Int>()

queue.enqueue(3)
