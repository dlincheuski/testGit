// с оздать структуру с данными Имя, Фамилия, Год рождения, средний балл оценок
struct Student {
    var firstName: String
    var surname: String
    var birthdayYear: Int
    var averageMark: Double
}

// сделать несколько экземпляров и заполнить их  данными
var student1 = Student(firstName: "Lex", surname: "Fox", birthdayYear: 1994, averageMark: 7.8)
var student2 = Student(firstName: "Pol", surname: "MgGill", birthdayYear: 1995, averageMark: 6.4)
var student3 = Student(firstName: "Piter", surname: "MgGill", birthdayYear: 1994, averageMark: 8.9)
var student4 = Student(firstName: "Yan", surname: "Dzi", birthdayYear: 1996, averageMark: 5.4)

// положить экземпляры в массив
var studentBooks1 = [student1, student2, student3, student4]

// создать функцию, которая будет принимать массив и возвращать порядковый номер и данные студентов
func printStudentsInfo (students : [Student]) {
    print("Действие функции по структуре по информации из журнала(вывод информации из журнала)")
    for i in 0 ..< (students.count) {
        print("\(i + 1 ). Имя - \(students[i].firstName), Фамилия - \(students[i].surname), Год рождкния - \(students[i].birthdayYear)г., средний балл - \(students[i].averageMark)  ")
    }
}

printStudentsInfo(students: studentBooks1)

// искользуя sorted отсортировать массив по среднему баллу по убыванию и распечатать
print(studentBooks1.sorted { (a, b) -> Bool in
    return a.averageMark < b.averageMark
})

// -//- по фамилии, если фамилии одинаковы то сортировка должна быть по имени и распечатать
func sortStudentBooks1BySurname (students: [Student]) {
    var sortStudentBooks1 = students.sorted { (a, b) -> Bool in
        return a.surname < b.surname
    }
    
    for i in 0 ..< (sortStudentBooks1.count - 1) {
        let element = (sortStudentBooks1.count - 1 - i)
        for j in 0 ..< (element) {
            if (sortStudentBooks1[j].surname == sortStudentBooks1[element].surname) && (sortStudentBooks1[j].firstName > sortStudentBooks1[element].firstName) {
                    let temp = sortStudentBooks1[j]
                    sortStudentBooks1[j] = sortStudentBooks1[element]
                    sortStudentBooks1[element] = temp
            }
        }
    }
    
    for i in 0 ..< sortStudentBooks1.count {
        print("\(i+1). Имя - \(sortStudentBooks1[i].firstName), Фамилия - \(sortStudentBooks1[i].surname), Год рождкния - \(sortStudentBooks1[i].birthdayYear)г., средний балл - \(sortStudentBooks1[i].averageMark)  ")
    }
}

sortStudentBooks1BySurname(students: studentBooks1)

// создать массив, идентичный имеющемуся, внести изменения в данные
var studentBooks11 = studentBooks1
studentBooks11[0].firstName = "Anna"
studentBooks11[1].birthdayYear = 1990
studentBooks11[2].averageMark = 9.9
studentBooks11[3].surname = "Yuyi"
printStudentsInfo(students: studentBooks1)
printStudentsInfo(students: studentBooks11)

// сделать все тоже же самое для класса
class StudentClass {
    var firstName: String
    var surname: String
    var birthdayYear: Int
    var averageMark: Double
    
    init(firstName: String, surname: String, birthdayYear: Int, averageMark: Double) {
        self.firstName = firstName
        self.surname = surname
        self.birthdayYear = birthdayYear
        self.averageMark = averageMark
    }
}

// сделать несколько экземпляров и заполнить их  данными
var studentClass1 = StudentClass(firstName: "Lex", surname: "Fox", birthdayYear: 1994, averageMark: 7.8)
var studentClass2 = StudentClass(firstName: "Pol", surname: "MgGill", birthdayYear: 1995, averageMark: 6.4)
var studentClass3 = StudentClass(firstName: "Piter", surname: "MgGill", birthdayYear: 1994, averageMark: 8.9)
var studentClass4 = StudentClass(firstName: "Yan", surname: "Dzi", birthdayYear: 1996, averageMark: 5.4)

// положить экземпляры в массив
var studentBooks2 = [studentClass1, studentClass2, studentClass3, studentClass4]

// создать функцию, которая будет принимать массив и возвращать порядковый номер и данные студентов
func printStudentsInfo (students: [StudentClass]) {
    print("Действие функции по классу по информации из журнала")
    for i in 0 ..< (students.count) {
        print("\(i + 1). Имя - \(students[i].firstName), Фамилия - \(students[i].surname), Год рождкния - \(students[i].birthdayYear)г., средний балл - \(students[i].averageMark)  ")
    }
}
printStudentsInfo(students: studentBooks2)

// искользуя sorted отсортировать массив по среднему баллу по убыванию и распечатать
print(studentBooks2.sorted { (a, b) -> Bool in
    return a.averageMark < b.averageMark
})

// -//- по фамилии, если фамилии одинаковы то сортировка должна быть по имени и распечатать
func sortStudentBooks2BySurname (students: [StudentClass]) {
    var sortStudentBooks2 = students.sorted { (a, b) -> Bool in
        return a.surname < b.surname
    }
    
    for i in 0 ..< (sortStudentBooks2.count - 1) {
        let element = (sortStudentBooks2.count - 1 - i)
        for j in 0 ..< (element) {
            if (sortStudentBooks2[j].surname == sortStudentBooks2[element].surname) && (sortStudentBooks2[j].firstName > sortStudentBooks2[element].firstName) {
                let temp = sortStudentBooks2[j]
                sortStudentBooks2[j] = sortStudentBooks2[element]
                sortStudentBooks2[element] = temp
            }
        }
    }
    
    for i in 0 ..< sortStudentBooks2.count {
        print("\(i+1). Имя - \(sortStudentBooks2[i].firstName), Фамилия - \(sortStudentBooks2[i].surname), Год рождкния - \(sortStudentBooks2[i].birthdayYear)г., средний балл - \(sortStudentBooks2[i].averageMark)  ")
    }
}

sortStudentBooks2BySurname(students: studentBooks2)

// создать массив, идентичный имеющемуся, внести изменения в данные
var studentBooks21 = studentBooks2
studentBooks21[0].firstName = "Anna"
studentBooks21[1].birthdayYear = 1990
studentBooks21[2].averageMark = 9.9
studentBooks21[3].surname = "Yuyi"
printStudentsInfo(students: studentBooks2)
printStudentsInfo(students: studentBooks21)
