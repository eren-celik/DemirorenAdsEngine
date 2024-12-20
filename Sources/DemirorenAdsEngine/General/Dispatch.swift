import UIKit

func guaranteeMainThread(using closure: @escaping () -> Void) {
    // If we are already on the main thread, execute the closure directly
    if Thread.isMainThread {
        closure()
    } else {
        DispatchQueue.main.async(execute: closure)
    }
}
