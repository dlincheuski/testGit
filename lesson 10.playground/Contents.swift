// создать 4 функции которые бы выводили интересные юникоды
// вывести на печать с помощью print все эти функции с помощью конкотонации
func firstCharacter() -> (Character) {
    return "\u{0489}"
}

func secondCharacter() -> (Character) {
        return "\u{047c}"
}

func thirdCharacter() -> (Character) {
        return "\u{0472}"
}

func fourCharacter() -> (Character) {
        return "\u{0471}"
}

print("\(firstCharacter())" + "\(secondCharacter())" + "\(thirdCharacter())" + "\(fourCharacter())")

print("\(firstCharacter()) + \(secondCharacter()) + \(thirdCharacter()) + \(fourCharacter())")

//использовать шахматное поле. с помощью функции с 2 значениями String i Int(типа: а 1)
// вывести цвет этого поля с помощью переменной внутри функции и вызова функции
func colorPartBoard(a: String, b: Int) {
    let color : String
    switch (a,b) {
    case let (index, b) where (index == "a") || (index == "c") || (index == "e") || (index == "g"):
        if (b == 1) || (b == 3) || (b == 5) || (b == 7) {
            color = "поле черное"
            print("\(index)\(b) - \(color)")
        } else {
            color = "поле белое"
            print("\(index)\(b) - \(color)")
        }
    case let (index, b) where (index == "b") || (index == "d") || (index == "f") || (index == "h"):
        if (b == 2) || (b == 4) || (b == 6) || (b == 8) {
            color = "поле черное"
            print("\(index)\(b) - \(color)")
        } else {
            color = "поле белое"
            print("\(index)\(b) - \(color)")
        }
    default:
            let error = "такого поля нет на шахматной доске"
            print(error)
    }
}

// создать функцию, которая будет принимать и возвращать массив в обратном порядке
// вариант 1 - создать функцию, которая будет принимать массив и возвращать массив в обратном порядке
// вариант 2 - создать функцию, которая будет принимать Sequence и возвращать массив в обратном порядке
// вариант 3 - создать функцию которая принимает Sequence и сама вызывала функцию которая вызывала бы массив (не реализовано)
func reverseSequenceArray(sequence: Int...) -> ([Int]) {
    print("Последовательность для функции возврата обратного порядка \(sequence)")
    var arrayCycle = [Int]()
    for index in 0..<sequence.count {
        arrayCycle.append(sequence[(sequence.count - 1 - index)])
    }
    return arrayCycle
}

print("Последовательность после работы функции обратного порядка \(reverseSequenceArray(sequence: 5,4,3,2,1))")

var arrayForTask3 = [ 5, 2, 4, 1, 3]
print("Исходный массив для возврата функции обратного порядка \(arrayForTask3)")

func reverseArray(array: [Int]) -> [Int] {
    for iteration in 0..<(arrayForTask3.count - 1) {
        if iteration <= (arrayForTask3.count - 1 - iteration) {
            let tempVariable = arrayForTask3[iteration]
            arrayForTask3[iteration] = arrayForTask3[(arrayForTask3.count - 1 - iteration)]
            arrayForTask3[(arrayForTask3.count - 1 - iteration)] = tempVariable
        }
    }
    return arrayForTask3
}

print("Результат работы функции обратного порядка \(reverseArray(array: arrayForTask3))")


// Ввести фразу в виде переменной типа String, все числа заменить на "one" все гласные заменить на прописные, все спецсимволы на пробел остальные на строчные
var stringA = "Я у мамы Ничего, я у Мамы классная, 33 раза я вО!, а 15 - Страстная."
var stringAsArray = [String]()
var StringAsResult = [String]()

for index in stringA {
    stringAsArray.append(String(index))
}

for var index in stringAsArray {
    switch index {
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        index = "one"
        StringAsResult.append(index)
    case ".", ",", " ", "!", "?", "-":
        index = " "
        StringAsResult.append(index)
    case "а", "о", "у", "ы", "э", "я", "е", "ё", "ю", "и":
        index = String(index.uppercased())
        StringAsResult.append(index)
    default:
        index = String(index.lowercased())
        StringAsResult.append(index)
    }
}

print(StringAsResult)
