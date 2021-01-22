// cоздать массив с количеством дней в месяце за год и вывести его
let dayPerYearArray = [31, 28, 31, 30, 31, 31, 30, 31, 30, 31, 30, 31]
for day in dayPerYearArray {
    print(day)
}

// создать 2 массива 1 - колличество дней в месяце, 2 - названием месяца. Вывести 2 массива в виде месяц-число дней
let monthPerYaerArray = ["January", "February", "March", "April", "May", "June", "Jule", "Augest", "September", "October", "November", "December"]
for month in 0..<dayPerYearArray.count {
    print("\(monthPerYaerArray[month])   " + "\(dayPerYearArray[month])")
}

// вывести 2 массива в виде месяц-число дней в обратном порядке
for index in 0..<dayPerYearArray.count {
    print("\(monthPerYaerArray[dayPerYearArray.count - 1 - index])   " + "\(dayPerYearArray[dayPerYearArray.count - 1 - index])")
}

// создать массив тюплов вида [(month,day)]
let monthDay = [("Jan", 31), ("Feb", 28), ("Mar", 31), ("Apr", 30), ("May", 31), ("Jun", 31), ("Jul", 30), ("Aug", 31), ("Sep", 30), ("Oct", 31), ("Nov", 30), ("Dec", 31)]
for i in 0 ..< monthDay.count {
    print("\(monthDay[i].0)   " + "\(monthDay[i].1)")
}

// с помощью массива посчитать сколько дней прошло от моего дня рождения
let myBirthday = ("Feb", 23)
var summDay = 0
for day in 0..<dayPerYearArray.count {
    if monthDay[day].0 == myBirthday.0 {
        summDay += 23
        break
    } else {
        summDay += monthDay[day].1
    }
}

print(summDay)

// создать массив опциональных интеджеров, посчитать из сумму с помощью ??
var number = 0
var summNumbers = 0
let numbers = ["55", "22", "k88", "10", "55a"]
for index in 0..<numbers.count {
    number = Int(numbers[index]) ?? 0
    summNumbers += number
}

print(summNumbers)

// создать массив опциональных интеджеров, посчитать из сумму с помощью форс анреп
summNumbers = 0
number = 0
for index in 0..<numbers.count {
    if Int(numbers[index]) != nil {
        number = Int(numbers[index])!
    } else {
        number = 0
    }
    summNumbers += number
}

print(summNumbers)

// создать массив опциональных интеджеров, посчитать из сумму с помощью опшнал байдинг
summNumbers = 0
number = 0
for index in 0..<numbers.count {
    if let number = Int(numbers[index]) {
    summNumbers += number
    }
}

print(summNumbers + 1)

// создать массив типа Character вида - алфавит[a,b,c,d,e], перевести его в массив типа String в виде обратного алфавита[e,d,c,b,a]
let arraysCharecter: [Character] = ["a", "b", "c", "d", "e"]
var arraysStrig: [String] = []
var index = arraysCharecter.count - 1
for index in 0..<arraysCharecter.count {
    arraysStrig.append(String(arraysCharecter[arraysCharecter.count - 1 - index]))
}

print(arraysStrig)
