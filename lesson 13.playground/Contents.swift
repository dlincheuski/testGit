// с оздать структуру с данными Имя, Фамилия, Год рождения, средний балл оценок
struct Student {
    var firstName: String
    var sername: String
    var yearBirthday: Int
    var equilBall: Double
}

// сделать несколько экземпляров и заполнить их  данными
var student1 = Student(firstName: "Lex", sername: "Fox", yearBirthday: 1994, equilBall: 7.8)
var student2 = Student(firstName: "Pol", sername: "MgGill", yearBirthday: 1995, equilBall: 6.4)
var student3 = Student(firstName: "Piter", sername: "MgGill", yearBirthday: 1994, equilBall: 8.9)
var student4 = Student(firstName: "Yan", sername: "Dzi", yearBirthday: 1996, equilBall: 5.4)

// положить экземпляры в массив
var studentBookStructs = [student1, student2, student3, student4]

// создать функцию, которая будет принимать массив и возвращать порядковый номер и данные студентов
func returnStudentInfo (array : [Student]) {
    print("Действие функции по структуре по информации из журнала(вывод информации из журнала)")
    for i in 0 ..< (array.count) {
        print("\(i+1). Имя - \(array[i].firstName), Фамилия - \(array[i].sername), Год рождкния - \(array[i].yearBirthday)г., средний балл - \(array[i].equilBall)  ")
    }
}

returnStudentInfo(array: studentBookStructs)

// искользуя sorted отсортировать массив по среднему баллу по убыванию и распечатать
print(studentBookStructs.sorted { (a, b) -> Bool in
    return a.equilBall < b.equilBall
})

// -//- по фамилии, если фамилии одинаковы то сортировка должна быть по имени и распечатать
func studentBookStructsSortedSername (array: [Student]) {
    var studentBookStructsSorted = array.sorted { (a, b) -> Bool in
        return a.sername < b.sername
    }
    
    for i in 0 ..< (studentBookStructsSorted.count - 1) {
        let element = (studentBookStructsSorted.count - 1 - i)
        for j in 0 ..< (element) {
            if (studentBookStructsSorted[j].sername == studentBookStructsSorted[element].sername) && (studentBookStructsSorted[j].firstName > studentBookStructsSorted[element].firstName) {
                    let temp = studentBookStructsSorted[j]
                    studentBookStructsSorted[j] = studentBookStructsSorted[element]
                    studentBookStructsSorted[element] = temp
            }
        }
    }
    
    for i in 0 ..< studentBookStructsSorted.count {
        print("\(i+1). Имя - \(studentBookStructsSorted[i].firstName), Фамилия - \(studentBookStructsSorted[i].sername), Год рождкния - \(studentBookStructsSorted[i].yearBirthday)г., средний балл - \(studentBookStructsSorted[i].equilBall)  ")
    }
}

studentBookStructsSortedSername(array: studentBookStructs)

// создать массив, идентичный имеющемуся, внести изменения в данные
var studentBookStructs1 = studentBookStructs
studentBookStructs1[0].firstName = "Anna"
studentBookStructs1[1].yearBirthday = 1990
studentBookStructs1[2].equilBall = 9.9
studentBookStructs1[3].sername = "Yuyi"
returnStudentInfo(array: studentBookStructs)
returnStudentInfo(array: studentBookStructs1)

// сделать все тоже же самое для класса
class StudentClass {
    var firstName: String
    var sername: String
    var yearBirthday: Int
    var equilBall: Double
    
    init(firstName: String, sername: String, yearBirthday: Int, equilBall: Double) {
        self.firstName = firstName
        self.sername = sername
        self.yearBirthday = yearBirthday
        self.equilBall = equilBall
    }
}

// сделать несколько экземпляров и заполнить их  данными
var studentClass1 = StudentClass(firstName: "Lex", sername: "Fox", yearBirthday: 1994, equilBall: 7.8)
var studentClass2 = StudentClass(firstName: "Pol", sername: "MgGill", yearBirthday: 1995, equilBall: 6.4)
var studentClass3 = StudentClass(firstName: "Piter", sername: "MgGill", yearBirthday: 1994, equilBall: 8.9)
var studentClass4 = StudentClass(firstName: "Yan", sername: "Dzi", yearBirthday: 1996, equilBall: 5.4)

// положить экземпляры в массив
var studentBookClass = [studentClass1, studentClass2, studentClass3, studentClass4]

// создать функцию, которая будет принимать массив и возвращать порядковый номер и данные студентов
func returnStudentInfo (array : [StudentClass]) {
    print("Действие функции по классу по информации из журнала")
    for i in 0 ..< (array.count) {
        print("\(i+1). Имя - \(array[i].firstName), Фамилия - \(array[i].sername), Год рождкния - \(array[i].yearBirthday)г., средний балл - \(array[i].equilBall)  ")
    }
}
returnStudentInfo(array: studentBookClass)

// искользуя sorted отсортировать массив по среднему баллу по убыванию и распечатать
print(studentBookClass.sorted { (a, b) -> Bool in
    return a.equilBall < b.equilBall
})

// -//- по фамилии, если фамилии одинаковы то сортировка должна быть по имени и распечатать
func studentBookClassSortedSername (array: [StudentClass]) {
    var studentBookClassSorted = array.sorted { (a, b) -> Bool in
        return a.sername < b.sername
    }
    
    for i in 0 ..< (studentBookClassSorted.count - 1) {
        let element = (studentBookClassSorted.count - 1 - i)
        for j in 0 ..< (element) {
            if (studentBookClassSorted[j].sername == studentBookClassSorted[element].sername) && (studentBookClassSorted[j].firstName > studentBookClassSorted[element].firstName) {
                let temp = studentBookClassSorted[j]
                studentBookClassSorted[j] = studentBookClassSorted[element]
                studentBookClassSorted[element] = temp
            }
        }
    }
    
    for i in 0 ..< studentBookClassSorted.count {
        print("\(i+1). Имя - \(studentBookClassSorted[i].firstName), Фамилия - \(studentBookClassSorted[i].sername), Год рождкния - \(studentBookClassSorted[i].yearBirthday)г., средний балл - \(studentBookClassSorted[i].equilBall)  ")
    }
}

studentBookClassSortedSername(array: studentBookClass)

// создать массив, идентичный имеющемуся, внести изменения в данные
var studentBookClass1 = studentBookClass
studentBookClass1[0].firstName = "Anna"
studentBookClass1[1].yearBirthday = 1990
studentBookClass1[2].equilBall = 9.9
studentBookClass1[3].sername = "Yuyi"
returnStudentInfo(array: studentBookClass)
returnStudentInfo(array: studentBookClass1)
