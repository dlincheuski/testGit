// для студента из урока добавить дату рождения Это должна быть структура, которая содержит
// день месяц год
// добавить проперти дата рождения
// добавить компьютер проперти которое будет считать сколько студенту лет на основании даты рождения
// добавить компьютер проперти которое будет считать сколько студент учился
// за основу взять что учится мы начинаем с 6 лет и если студенту лет меньше то должен быть 0
import UIKit

class Student {
    var firstName: String
    var sername: String
    var birthday: DateBirthday

    init(firstName: String, sername: String, birthday: DateBirthday) {
        self.firstName = firstName
        self.sername = sername
        self.birthday = birthday
    }
    
    var howManyYaesOldStudent: Int {
        get {
            return ((today.Date - birthday.Date) + (today.Month * 30 - birthday.Month * 30) + (today.Year * 365 - birthday.Year * 365)) / 365
        }
    }
    
    var howLongStudetLearn: Int {
        get {
            if (((today.Date - birthday.Date) + (today.Month * 30 - birthday.Month * 30) + (today.Year * 365 - birthday.Year * 365)) / 365 - 6) <= 0 {
                return 0
            } else {
                return ((today.Date - birthday.Date) + (today.Month * 30 - birthday.Month * 30) + (today.Year * 365 - birthday.Year * 365)) / 365 - 6
            }
        }
    }
}

struct DateBirthday {
    var Date: Int
    var Month: Int
    var Year: Int
}

var today = DateBirthday(Date: 23, Month: 02, Year: 2021)
var student1 = Student(firstName: "Clara", sername: "Sting", birthday: DateBirthday(Date: 23, Month: 02, Year: 2010))
print(student1.howLongStudetLearn)

// создать структуру отрезок имеющий 2 структуры точки , кажадая из которых содержит переменные а и б (это стори пропертис)
// создать компьютер проперти мидпоинт !!!!!!!, которая находится между 2 точками начала и конца отрезка
// создать компьютер проперти длина отрезка
struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var startPoint: Point
    var endPoint: Point
    
    var length: Double {
        get {
            return sqrt((endPoint.x - startPoint.x) * (endPoint.x - startPoint.x) + (endPoint.y - startPoint.y) * (endPoint.y - startPoint.y))
        }
    }
    
    var middlePoint: Point {
        get {
            let middleX = (startPoint.x + endPoint.x) / 2
            let middleY = (startPoint.y + endPoint.y) / 2
            return Point(x: middleX, y: middleY)
        }
    }
}

var line = Line(startPoint: Point(x: 1, y: 1), endPoint: Point(x: 3, y: 1))
print(line.length)
print(line.middlePoint)
