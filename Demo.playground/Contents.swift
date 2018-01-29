let any: Any = "w"

switch any {
case let string as String:
    print("match: String(\(string))")
case let int as Int:
    print("match: Int(\(int))")
default:
    print("default")
}
