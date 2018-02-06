func someFunction<T>(_ any: Any) -> T? {
    return any as? T
}

let a: String? = someFunction("abc")
let b: Int? = someFunction(1)
let c = someFunction("abc")
