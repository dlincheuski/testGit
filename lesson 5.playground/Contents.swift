// how many seconds from 1 janyary to my birthday
/*
var total = (31 * 24 * 60 * 60) + (23 * 24 * 60 * 60)
print("\(total) seconds")

//how dacate of year you born

var myBirthdayMonth = 2
if myBirthdayMonth <= 3 {
    print("I was born in 1 decate")
} else if (myBirthdayMonth > 3) && (myBirthdayMonth <= 6) {
    print("I was born in 2 decate")
} else if (myBirthdayMonth > 6) && (myBirthdayMonth <= 9) {
    print("I was born in 3 decate")
} else {
    print("I was born in 4 decate")
}

// how collor have cheess bord block

var gorizontal = 2
var vertikal = 2
if ((gorizontal + vertikal) % 2) == 0 {
    print("cheess block is white")
} else {
    print("cheess block is black")
}

//can i write (0 < myBirthdayMonth <= 3) ?
*/
// сколько секунд прошло от 1 января до моего дня рождения

var summ = (31 * 24 * 60 * 60) + (23 * 24 * 60 * 60)
print(summ)

//в каком квартале я родился
var month = 6

if (1 <= month) && (month <= 3) {
    print("1 decade")
}
if (4 <= month) && (month <= 6) {
    print("2 decade")
}
if (7 <= month) && (month <= 9) {
    print("3 decade")
}
if (10 <= month) && (month <= 12) {
    print("4 decade")
}

//определить цвет шахматного поля
var vertikal = (a:1, b:2, c:3, d:4, e:5, f:6, g:7, h:8)
var gorizontal = (1,2,3,4,5,6,7,8)

if ((vertikal.g * gorizontal.4) % 2) == 0 {
    print("white")
} else {
    print("black")
}

























