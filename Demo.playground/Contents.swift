func concat<T : Collection, U : Collection>
    (_ argument1: T, _ argument2: U) -> [T.Iterator.Element]
    where T.Iterator.Element == U.Iterator.Element {
        return Array(argument1) + Array(argument2)
}

let array = [1, 2, 3]
let set = Set([1, 2, 3])
let result = concat(array, set)
