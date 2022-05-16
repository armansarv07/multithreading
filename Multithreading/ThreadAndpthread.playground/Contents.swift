import UIKit

// Thread
// Operation
// Grand Central Dispatch

// 1Паралель -----------
//2Thread//------------

//---------Последовательные-----
//1Thread - - -  -
//2Thread -- - --

//---------Асинхронный поток-----
//1Main(UI) ----------
//2Thread      -


// Unix - POSIX

var thread = pthread_t(bitPattern: 0) // создаем поток
var attribute = pthread_attr_t()

pthread_attr_init(&attribute)
pthread_create(&thread, &attribute, { pointer in
    print("test")
    return nil
}, nil)


// 2 Thread
var nsThread = Thread {
    print("Test")
}

nsThread.start()
Thread.setThreadPriority(1)
nsThread.cancel()
