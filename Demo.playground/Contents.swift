class IntBox {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

var a = IntBox(value: 1) // aはIntBox(value: 1)を参照する
var b = a // bはaと同じインスタンスを参照する

// a.value, b.valueは両方とも1
a.value
b.value

// a.valueを2に変更する
a.value = 2

// a.value,b.value両方とも2
a.value
b.value
