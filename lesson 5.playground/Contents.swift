// how many seconds from 1 janyary to my birthday

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










