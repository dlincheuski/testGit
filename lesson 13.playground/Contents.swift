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
var studentBooksStruct = [student1, student2, student3, student4]

// создать функцию, которая будет принимать массив и возвращать порядковый номер и данные студентов
func printStudentInfo (students : [Student]) {
    print("Действие функции по структуре по информации из журнала(вывод информации из журнала)")
    for i in 0 ..< (students.count) {
        print("\(i + 1 ). Имя - \(students[i].firstName), Фамилия - \(students[i].surname), Год рождкния - \(students[i].birthdayYear)г., средний балл - \(students[i].averageMark)  ")
    }
}

printStudentInfo(students: studentBooksStruct)

// искользуя sorted отсортировать массив по среднему баллу по убыванию и распечатать
print(studentBooksStruct.sorted { (a, b) -> Bool in
    return a.averageMark < b.averageMark
})

// -//- по фамилии, если фамилии одинаковы то сортировка должна быть по имени и распечатать
func sortStudentBooksStructBySurname (students: [Student]) {
    var sortedStudentBooksStruct = students.sorted { (a, b) -> Bool in
        return a.surname < b.surname
    }
    
    for i in 0 ..< (sortedStudentBooksStruct.count - 1) {
        let element = (sortedStudentBooksStruct.count - 1 - i)
        for j in 0 ..< (element) {
            if (sortedStudentBooksStruct[j].surname == sortedStudentBooksStruct[element].surname) && (sortedStudentBooksStruct[j].firstName > sortedStudentBooksStruct[element].firstName) {
                    let temp = sortedStudentBooksStruct[j]
                    sortedStudentBooksStruct[j] = sortedStudentBooksStruct[element]
                    sortedStudentBooksStruct[element] = temp
            }
        }
    }
    
    for i in 0 ..< sortedStudentBooksStruct.count {
        print("\(i+1). Имя - \(sortedStudentBooksStruct[i].firstName), Фамилия - \(sortedStudentBooksStruct[i].surname), Год рождкния - \(sortedStudentBooksStruct[i].birthdayYear)г., средний балл - \(sortedStudentBooksStruct[i].averageMark)  ")
    }
}

sortStudentBooksStructBySurname(students: studentBooksStruct)

// создать массив, идентичный имеющемуся, внести изменения в данные
var studentBooksStruct1 = studentBooksStruct
studentBooksStruct1[0].firstName = "Anna"
studentBooksStruct1[1].birthdayYear = 1990
studentBooksStruct1[2].averageMark = 9.9
studentBooksStruct1[3].surname = "Yuyi"
printStudentInfo(students: studentBooksStruct)
printStudentInfo(students: studentBooksStruct1)

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
var studentBooksClases = [studentClass1, studentClass2, studentClass3, studentClass4]

// создать функцию, которая будет принимать массив и возвращать порядковый номер и данные студентов
func printStudentInfo (students : [StudentClass]) {
    print("Действие функции по классу по информации из журнала")
    for i in 0 ..< (students.count) {
        print("\(i + 1). Имя - \(students[i].firstName), Фамилия - \(students[i].surname), Год рождкния - \(students[i].birthdayYear)г., средний балл - \(students[i].averageMark)  ")
    }
}
printStudentInfo(students: studentBooksClases)

// искользуя sorted отсортировать массив по среднему баллу по убыванию и распечатать
print(studentBooksClases.sorted { (a, b) -> Bool in
    return a.averageMark < b.averageMark
})

// -//- по фамилии, если фамилии одинаковы то сортировка должна быть по имени и распечатать
func sortStudentBooksClasesBySurname (students: [StudentClass]) {
    var sortStudentBooksClases = students.sorted { (a, b) -> Bool in
        return a.surname < b.surname
    }
    
    for i in 0 ..< (sortStudentBooksClases.count - 1) {
        let element = (sortStudentBooksClases.count - 1 - i)
        for j in 0 ..< (element) {
            if (sortStudentBooksClases[j].surname == sortStudentBooksClases[element].surname) && (sortStudentBooksClases[j].firstName > sortStudentBooksClases[element].firstName) {
                let temp = sortStudentBooksClases[j]
                sortStudentBooksClases[j] = sortStudentBooksClases[element]
                sortStudentBooksClases[element] = temp
            }
        }
    }
    
    for i in 0 ..< sortStudentBooksClases.count {
        print("\(i+1). Имя - \(sortStudentBooksClases[i].firstName), Фамилия - \(sortStudentBooksClases[i].surname), Год рождкния - \(sortStudentBooksClases[i].birthdayYear)г., средний балл - \(sortStudentBooksClases[i].averageMark)  ")
    }
}

sortStudentBooksClasesBySurname(students: studentBooksClases)

// создать массив, идентичный имеющемуся, внести изменения в данные
var studentBooksClases1 = studentBooksClases
studentBooksClases1[0].firstName = "Anna"
studentBooksClases1[1].birthdayYear = 1990
studentBooksClases1[2].averageMark = 9.9
studentBooksClases1[3].surname = "Yuyi"
printStudentInfo(students: studentBooksClases)
printStudentInfo(students: studentBooksClases1)
