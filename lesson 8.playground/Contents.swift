//создать дикшенери вида [студент : оценка], двум студентам изменить оценку, добавить 2 новых студента, убрать 2 студента
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
//посчитать сумму балов оставшихся студентов и их средний балл
var summ = 0
var count = 0
var average = 0.0
for key in dicthStudents.keys {
    if let keys = Int(dicthStudents[key]!) {
        summ += keys
        count += 1
    }
}
average = Double(summ) / Double(count)
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
for valueGorizontal in gorizontal {
    for valueVertikal in vertikal {
        if Int(valueGorizontal)! % 2 == 0 {
            board["\(valueVertikal)" + "\(valueGorizontal)"] = true
        } else {
            board["\(valueVertikal)" + "\(valueGorizontal)"] = false
        }
    }
}
print(board["b2"]!)
