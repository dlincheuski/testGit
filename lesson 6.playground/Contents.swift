//создать 5 строковых констант. Проверить на нил с помощью ??. Распечатать результат с помощью канкотонации и интерполяции.

let number1 = "12345"
let number2 = "12hh345"
let number3 = "12543"
let number4 = "23451"
let number5 = "54321"

var mumber1 = Int(number1)
var mumber2 = Int(number2)
var mumber3 = Int(number3)
var mumber4 = Int(number4)
var mumber5 = Int(number5)
/*
Int(number1) != nil ?? Int(number1)!
Int(number2) != nil ?? Int(number2)!
Int(number3) != nil ?? Int(number3)!
Int(number4) != nil ?? Int(number4)!
Int(number5) != nil ?? Int(number5)!
*/



print("Summ = \(number1) + \(number2) + \(number3) + \(number4) + \(number5)")

print("Summ = " + "\(number1)" + " + " + "\(number2)" + " + " + "\(number3)" + " + " + "\(number4)" + " + " + "\(number5)")





















