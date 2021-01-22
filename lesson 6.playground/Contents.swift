//создать 5 строковых констант. Проверить на нил с помощью ??. Распечатать результат с помощью канкотонации и интерполяции.

let number1 = "12345"
let number2 = "12hh345"
let number3 = "12543"
let number4 = "23451"
let number5 = "54321"

// проверить на nil с помощью ??
var mumber1 = Int(number1) ?? 0
var mumber2 = Int(number2) ?? 0
var mumber3 = Int(number3) ?? 0
var mumber4 = Int(number4) ?? 0
var mumber5 = Int(number5) ?? 0

// распечатать результат с помощью канкотонации и интерполяции.
var summ = mumber1 + mumber2 + mumber3 + mumber4 + mumber5
print("Summ = \(mumber1) + \(mumber2) + \(mumber2) + \(mumber4) + \(mumber5) = \(summ)")

print("Summ = " + "\(mumber1)" + " + " + "\(mumber2)" + " + " + "\(mumber2)" + " + " + "\(mumber4)" + " + " + "\(mumber5)" + " = " + "\(summ)")

// создать строку типа алфавит и найти в строке индекс указанного Charecter
let stringExample = "abcdefghijklmnopqrstuvwxyz"
let char: Character = "b"
var counter = 0

for index in stringExample {
    if index == char {
        break
    } else {
        counter += 1
    }
}
print("index char in stringExample - \(counter)")
