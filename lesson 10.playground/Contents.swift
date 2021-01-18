//создать 4 функции которые бы выводили интересные юникоды
//вывести на печать с помощью print все эти функции с помощью конкотонации
func firstCharacter () -> (Character) {
    let i : Character = "\u{0489}"
    return i
}
func secondCharacter () -> (Character) {
    let j: Character  = "\u{047c}"
        return j
}
func thirdCharacter () -> (Character) {
    let p: Character  = "\u{0472}"
        return p
}
func fourCharacter () -> (Character) {
    let q: Character  = "\u{0471}"
        return q
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

colorPartBoard(a: "l", b: 8)
//создать функцию, которая будет принимать и возвращать массив в обратном порядке
//вариант 1 - создать функцию, которая будет принимать массив и возвращать массив в обратном порядке
//вариант 2 - создать функцию, которая будет принимать Sequence и возвращать массив в обратном порядке
//вариант 3 - создать функцию которая принимает Sequence и сама вызывала функцию которая вызывала бы массив (не реализовано)
func revertSequenceArray(sequence: Int...) -> ([Int]) {
    print("Последовательность для функции возврата обратного порядка \(sequence)")
    var arrayCicl = [Int]()
    for index in 0..<sequence.count {
        arrayCicl.append(sequence[(sequence.count - 1 - index)])
    }
    return arrayCicl
}
var resalts = revertSequenceArray(sequence: 5,4,3,2,1)
print("Последовательность после работы функции обратного порядка \(resalts)")

var arrayForTask3 = [ 5, 2, 4, 1, 3]
print("Исходный массив для возврата функции обратного порядка \(arrayForTask3)")

func reversArray(array: [Int]) -> [Int] {
    for iteration in 0..<(arrayForTask3.count - 1) {
        if iteration <= (arrayForTask3.count - 1 - iteration) {
            
            let temp = arrayForTask3[iteration]
            arrayForTask3[iteration] = arrayForTask3[(arrayForTask3.count - 1 - iteration)]
            arrayForTask3[(arrayForTask3.count - 1 - iteration)] = temp
        }
        
    }
    return arrayForTask3
}

let resultReversArray = reversArray(array: arrayForTask3)
print("Результат работы функции обратного порядка \(resultReversArray)")


// Ввести фразу в виде переменной типа String, все числа заменить на "one" все гласные заменить на прописные, все спецсимволы на пробел остальные на строчные
var stringA = "Я у мамы Ничего, я у Мамы классная, 33 раза я вО!, а 15 - Страстная."
var stringAArray = [String]()
var StringAResult = [String]()

for index in stringA {
    stringAArray.append(String(index))
}

for var index in stringAArray {
    switch index {
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        index = "one"
        StringAResult.append(index)
    case ".", ",", " ", "!", "?", "-":
        index = " "
        StringAResult.append(index)
    case "а", "о", "у", "ы", "э", "я", "е", "ё", "ю", "и":
        index = String(index.uppercased())
        StringAResult.append(index)
    default:
        index = String(index.lowercased())
        StringAResult.append(index)
    }
}

print(StringAResult)
