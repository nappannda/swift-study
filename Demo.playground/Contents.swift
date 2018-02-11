import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class SomeOperation : Operation {
    let number: Int
    
    init(number: Int) { self.number = number }
    
    override func main() {
        Thread.sleep(forTimeInterval: 1)
        
        if isCancelled { return }
        
        print(number)
    }
}

let quequ = OperationQueue()
quequ.name = "com.example.my_operation_quque"
quequ.maxConcurrentOperationCount = 2
quequ.qualityOfService = .userInitiated

var operations = [SomeOperation]()

for i in 0..<10 {
    operations.append(SomeOperation(number: i))
    if i > 0 {
        operations[i].addDependency(operations[i-1])
    }
}

quequ.addOperations(operations, waitUntilFinished: false)
