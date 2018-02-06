func isEqual<T: Equatable>(_ x: T, _ y: T) -> Bool {
    return x == y
}

isEqual("abc", "def")
isEqual(1.0, 3.14)
isEqual(false, false)
