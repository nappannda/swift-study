import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let quque = DispatchQueue.global(qos: .userInitiated)

quque.async {
    let isMainThread = Thread.isMainThread
    print("非同期の処理")
    let quque = DispatchQueue.main
    quque.async {
        let isMainThread = Thread.isMainThread
        print("メインスレッドでの処理")
    }
}
