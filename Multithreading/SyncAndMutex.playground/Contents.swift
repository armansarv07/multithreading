import UIKit
import Darwin

class SafeThread {
    private var mutex = pthread_mutex_t()
    
    init() {
        pthread_mutex_init(&mutex, nil)
    }
    
    func someMethod(completion: () -> Void) {
        pthread_mutex_lock(&mutex)
        // some data
        completion()
        defer {
            pthread_mutex_unlock(&mutex)
        }
    }
}


var array = [String]()
let safeThread = SafeThread()

safeThread.someMethod {
    print("test")
    array.append("1 Thread")
}
