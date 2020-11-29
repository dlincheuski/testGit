//need summ all str, if its int(определить является ли строка числом и получить сумму всех чисел)

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
 
 if let unwrap2 = Int(number2) {
 numberSumm += unwrap2
 }
 
 if let unwrap3 = Int(number3) {
 numberSumm += unwrap3
 }
 if  mumber4 != nil {
 numberSumm += (mumber4)!
 }
 let unwrap5 = Int(number5) ?? 0
 numberSumm += unwrap5

 print(numberSumm)

//make the request work(сделать что бы правильно отрабатывались запросы от сервера)

let request : (Int, String?, String?)
request.0 = 199
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

var requestNew : (Int?, String?, String?)
requestNew.0 = 195
requestNew.1 = "Ok"
requestNew.2 = "Error"
var summCode2 = requestNew.0 ?? 0
print(summCode2)
if (summCode2 > 200) && (summCode2 <= 300){
    print(requestNew.1!)
} else {
    print(requestNew.2!)
}
