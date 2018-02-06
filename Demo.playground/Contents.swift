// ジェネリクスを使った関数
func identityWithGenericValue<T>(_ argument: T) -> T {
    return argument
}

let genericInt = identityWithGenericValue(1)
let genericString = identityWithGenericValue("abc")

// Anyを使った関数
func identityWithAnyValue(_ argument: Any) -> Any {
    return argument
}

let anyInt = identityWithAnyValue(1)
let anyString = identityWithAnyValue("abc")

if let int = anyInt as? Int {
    // ここでようやくInt型として扱えるようになる
    print("anyInt is \(int)")
} else {
    // Int型へのダウンキャストが失敗した場合を考慮する必要がある
    print("The type of anyInt is not Int")
}
