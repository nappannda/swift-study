// for文の場合
label: for element in [1, 2, 3] {
    for nestedElement in [1, 2, 3] {
        print("for文")
        break label
    }
}

// while文の場合
label: while true {
    while true {
        print("while文")
        break label
    }
}


// repeat文の場合
label: repeat {
    repeat {
        print("repeat文")
        break label
    } while true
} while true
