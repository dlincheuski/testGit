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











