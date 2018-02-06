struct IntCollection : Collection {
    var startIndex: Int {
        return 0
    }
    
    var endIndex: Int {
        return 0
    }
    
    subscript(position: Int) -> Int {
        return position
    }
    
    func index(after i: Int) -> Int {
        return i + 1
    }
}

let collection = IntCollection()
let element = collection[5]

let count = collection.count
let first = collection.first
let isEmpty = collection.isEmpty
let slice = collection[3...5]

var array = [Int]()
for element in collection {
    array.append(element)
}

array
