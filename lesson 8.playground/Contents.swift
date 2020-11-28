//создать дикшенери вида [студент : оценка], двум студентам изменить оценку, добавить 2 новых студента
//посчитать сумму балов оставшихся студентов и их средний балл
var dicthStudents = ["Bob Luis" : "5", "Stefany Road" : "9", "Stiv Wolf" : "7", "Megan Fox" : "8", "Lili Jordan" : "4"]

dicthStudents["Bob Luis"] = "9"
dicthStudents["Megan Fox"] = "7"
print(dicthStudents)

dicthStudents["Melani Finger"] = "6"
dicthStudents["Stanli Kubric"] = "9"
print(dicthStudents)

dicthStudents.removeValue(forKey:"Stiv Wolf")
dicthStudents["Megan Fox"] = nil
print(dicthStudents)

var summ = 0
var average = 0.0
for key in dicthStudents.keys {
    if var keys = Int(dicthStudents[key]!) {
        summ += keys
    }
}
average = Double(summ) / 5.0
print(summ, average)

//создать дикшенери вида [месяц : число дней в месяце], использовать тюпл при выводе, использоыввть клюя-значение при выводе
var dictMonthDay: [String:String] = ["Jan" : "31", "Feb" : "28", "JMar" : "31", "Apr" : "30", "May" : "31", "Jun" : "31",
"Jul" : "30", "Aug" : "31", "Sep" : "30", "Oct" : "31", "Nov" : "30", "Dec" : "31", ]
for (key, value) in dictMonthDay {
    print("\(key),\(value)")
}
for key in dictMonthDay.keys {
    print("\(key),\(dictMonthDay[key]!)")
}

//создать дикшенери из 64 элементов, на подобие шахматной доски из двух массивов число буквенных.
//вывести true если цвет ячейки черный и false если цвет ячейки белый
let vertikal = ["a", "b", "c", "d", "e", "f", "g", "h"]
let gorizontal = ["1", "2", "3", "4", "5", "6", "7", "8"]
var board: [String:Bool] = [:]
for i in gorizontal {
    for j in vertikal {
        if Int(i)! % 2 == 0 {
            board["\(j)" + "\(i)"] = true
        } else {
            board["\(j)" + "\(i)"] = false
        }
    }
}
print(board["b2"]!)
