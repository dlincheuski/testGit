//Cоздать массив с днями в месяце за год и вывести его
let day = [31, 28, 31, 30, 31, 31, 30, 31, 30, 31, 30, 31]
for i in day {
    print(i)
}
//создать массив с месяцами, вывести 2 массива в виде месяц-число дней
let month = ["January", "February", "March", "April", "May", "June", "Jule", "Augest", "September", "October", "November", "December"]
for i in 0..<day.count {
    print("\(month[i])   " + "\(day[i])")
}
//вывести 2 массива в виде месяц-число дней в обратном порядке
var jj = day.count - 1
for i in 0..<day.count {
    print("\(month[jj])   " + "\(day[jj])")
    jj -= 1
}
//создать массив тюплов вида [(month,day)]
let monthDay = [("Jan",31), ("Feb",28), ("Mar",31), ("Apr",30), ("May",31), ("Jun",31), ("Jul",30), ("Aug",31), ("Sep",30), ("Oct",31), ("Nov",30), ("Dec",31)]
for i in 0..<monthDay.count {
    print("\(monthDay[i].0)   " + "\(monthDay[i].1)")
}
//с помощью массива посчитать сколько дней прошло от моего дня рождения
let myBirthday = ("Feb",23)
var summDay = 0
for i in 0..<day.count {
    if monthDay[i].0 == myBirthday.0 {
        summDay += 23
        break
    } else {
        summDay += monthDay[i].1
    }
}
print(summDay)
//создать массив опциональных интеджеров, посчитать из сумму с помощью ??, форс анреп, опшнал байдинг
var j = 0
var summNumbers = 0
let numbers = ["55", "22", "k88", "10", "55a"]
for i in 0..<numbers.count {
    j = Int(numbers[i]) ?? 0
    summNumbers += j
}
print(summNumbers)

summNumbers = 0
j = 0
for i in 0..<numbers.count {
    if Int(numbers[i]) != nil {
        j = Int(numbers[i])!
    } else {
        j = 0
    }
summNumbers += j
}
print(summNumbers)

summNumbers = 0
j = 0
for i in 0..<numbers.count {
    if var jj = Int(numbers[i]) {
    summNumbers += jj
    }
}
print(summNumbers + 1)

//создать массив керектеров - алфавит, перевести его в массив строк наоборот
let arraysCharecter : Character = [a, b, c, d, e]
print(arraysCharecter)
