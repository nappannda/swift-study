enum Result<T, Error> {
    case success(T)
    case failure(Error)
}

enum DatabaseError {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) -> Result<User, DatabaseError> {
    let users = [
        User(id: 1, name: "Yusei Nishiyama", email: "nishiyama@example.com"),
        User(id: 2, name: "Yosuke Ishikawa", email: "ishikawa@example.com")
    ]
    
    for user in users {
        if user.id == id {
            return .success(user)
        }
    }
    
    return .failure(.entryNotFound)
}

let id = 0
let result = findUser(byID: id)

switch result {
case let .success(name):
    print(".success: \(name)")
case let .failure(error):
    switch error {
    case .entryNotFound:
        print(".failure: .entryNotFound")
    case .duplicatedEntry:
        print(".failure: .dupliacatedEntyr")
    case .invalidEntry(let reason):
        print(".failure: .invalidEntry(\(reason))")
    }
}
