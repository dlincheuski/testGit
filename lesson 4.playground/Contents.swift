//need summ all str, if its int(определить является ли строка числом и получить сумму всех чисел)
var str1 = "55"
var str11 = Int(str1) ?? 0
var str2 = "22"
var str22 = Int(str2) ?? 0
var str3 = "k88"
var str33 = Int(str3) ?? 0
var str4 = "10"
var str44 = Int(str4) ?? 0
var str5 = "55a"
var str55 = Int(str5) ?? 0
var summ = 0
summ = str11 + str22 + str33 + str44 + str55

print(summ)

//make the request work(сделать что бы правильно отрабатывались запросы от сервера)

let request : (Int, String?, String?)
request.0 = 202
request.1 = "Ok"
request.2 = "Error"
var summCode = Int(request.0)

if summCode < 200 {
    print(request.2!)
} else if summCode >= 300 {
    print(request.2!)
} else {
    print(request.1!)
}


/*
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

var numberSumm = 0

if  mumber1 != nil {
    numberSumm += (mumber1)!
}

if var unwrap2 = Int(number2) {
    numberSumm += unwrap2
}

if let unwrap3 = Int(number3) {
    numberSumm += unwrap3
}
if  mumber4 != nil {
    numberSumm += (mumber4)!
}

if let unwrap5 = Int(number5) {
    numberSumm += unwrap5
}
print(numberSumm)



//let a = "200b"
//var b = Int(a)
/*
 if a == b {
 print("good")
 } else {
 print("bed")
 }
 */

*/


































