
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

//создать переменную возраст человека и с помощью switch вывести периоды чеовека
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

//создать три переменных типа String вида Ф.И.О.
//Если его имя начинается с A or O вывести его имя
//Если его отчество начинается с V or D вывести его имя и отчество
//Если его фамилия начинаетсяч с Е или З вывести его фамилию
//В остальных случаях выводить его ФИО
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
//Создать поле 10 на 10 типа Морской бой. При запросе координаты должен даваться ответ - мимо, есть попадание, убит
let vertikal = ["a", "b", "c", "d", "e", "f", "g", "h", "j", "k"]
let gorizontal = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
var board: [String:String] = [:]
for indexGorizontal in gorizontal {
    for indexVertikal in vertikal {
        switch board {
        case let popadanie where (Int(indexGorizontal)! % 3 == 0):
            board["\(indexVertikal)" + "\(indexGorizontal)"] = "popadanie"
        case let ubit where (Int(indexGorizontal)! % 5 == 0):
            board["\(indexVertikal)" + "\(indexGorizontal)"] = "ubit"
        default:
            board["\(indexVertikal)" + "\(indexGorizontal)"] = "mimo"
        }
    }
}
print(board["a5"]!)














