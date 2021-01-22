
//создать строку типа String на 200 символов.
//С помощью Switch посчитать количество гласных, согласных, спец знаков, цифр
let string = "я у мамы ничего, я у мамы классная, 33 раза я во!, а 15 - страсная."
var glasnye = 0
var soglasnye = 0
var numbers = 0
var specSymbol = 0
for i in string {
    switch i {
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        numbers += 1
    case ".", ",", " ", "!", "?", "-":
        specSymbol += 1
    case "а", "о", "у", "ы", "э", "я", "е", "ё", "ю", "и":
        glasnye += 1
    default:
        soglasnye += 1
    }
}

print(numbers)
print(specSymbol)
print(glasnye)
print(soglasnye)

// создать переменную возраст человека и с помощью switch вывести периоды чеовека
var age = 121
switch age {
case 0...6:
    print("Rebenok")
case 7...12:
    print("Otrok")
case 12...15:
    print("Unosha")
case 16...25:
    print("Paren/Devushka")
case 26...55:
    print("Muzhchina/Zhenschina")
case 56...120:
    print("Staric/Staruha")
default:
    print("Smert")
}

// создать три переменных типа String вида Ф.И.О.
// если его имя начинается с A or O вывести его имя
// если его отчество начинается с V or D вывести его имя и отчество
// если его фамилия начинаетсяч с Е или З вывести его фамилию
// в остальных случаях выводить его ФИО
var fio = ("Auzhenko", "Ariu", "Vnatolievich")

switch fio {
case (fio.0, let number, fio.2) where number[number.startIndex] == "A" || number[number.startIndex]  == "O":
    print(fio.1)
case (fio.0, fio.1, let number) where number[number.startIndex]  == "V" || number[number.startIndex]  == "D":
    print("\(fio.1) + \(fio.2)")
case (let number, fio.1, fio.2) where number[number.startIndex]  == "E" || number[number.startIndex]  == "Z":
    print(fio.0)
default:
    print(fio)
}

// создать поле 10 на 10 типа Морской бой. При запросе координаты должен даваться ответ - мимо, есть попадание, убит
let vertical = ["a", "b", "c", "d", "e", "f", "g", "h", "j", "k"]
let horizontal = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
var board: [String:String] = [:]
for indexHorizontal in horizontal {
    for indexVertical in vertical {
        switch board {
        case _ where (Int(indexHorizontal)! % 3 == 0):
            board["\(indexVertical)" + "\(indexHorizontal)"] = "popadanie"
        case _ where (Int(indexHorizontal)! % 5 == 0):
            board["\(indexVertical)" + "\(indexHorizontal)"] = "ubit"
        default:
            board["\(indexVertical)" + "\(indexHorizontal)"] = "mimo"
        }
    }
}

print(board["a5"]!)
