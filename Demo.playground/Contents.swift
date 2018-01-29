var count = 0

func someFunction() -> Int {
    defer {
        count += 1
    }
    return count
}

someFunction()
count
