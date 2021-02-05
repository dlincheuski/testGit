// для студента из урока добавить дату рождения Это должна быть структура, которая содержит
// день месяц год
// добавить проперти дата рождения
// добавить компьютер проперти которое будет считать сколько студенту лет на основании даты рождения
// добавить компьютер проперти которое будет считать сколько студент учился
// за основу взять что учится мы начинаем с 6 лет и если студенту лет меньше то должен быть 0
import Foundation

class Student {
    var firstName: String
    var surname: String
    var birthday: BirthdayDate

    init(firstName: String, surname: String, birthday: BirthdayDate) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
    
    var studentAge: Int {
        get {
            return ((today.date - birthday.date) + (today.month * 30 - birthday.month * 30) + (today.year * 365 - birthday.year * 365)) / 365
        }
    }
    
    var studyTime: Int {
        get {
            if (((today.date - birthday.date) + (today.month * 30 - birthday.month * 30) + (today.year * 365 - birthday.year * 365)) / 365 - 6) <= 0 {
                return 0
            } else {
                return ((today.date - birthday.date) + (today.month * 30 - birthday.month * 30) + (today.year * 365 - birthday.year * 365)) / 365 - 6
            }
        }
    }
}

struct BirthdayDate {
    var date: Int
    var month: Int
    var year: Int
}

var today = BirthdayDate(date: 23, month: 02, year: 2021)
var student1 = Student(firstName: "Clara", surname: "Sting", birthday: BirthdayDate(date: 23, month: 02, year: 2010))
print(student1.studyTime)

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
