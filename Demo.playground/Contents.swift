struct NewsFeedItem {
    enum Kind {
        case a
        case b
        case c
    }
    
    let id: Int
    let title: String
    let type: Kind
}

let type = NewsFeedItem.Kind.a
let item = NewsFeedItem(id: 1, title: "Table", type: type)

switch item.type {
case .a: print("type is .a")
case .b: print("type is .b")
case .c: print("type is .c")
}
