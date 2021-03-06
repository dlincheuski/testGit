/*
 1. Расширить CheckList, добавить метод, который по списку проверяет факт покупки
 2. Создать метод, который бы рисовал синусоиду цифрой 1
 3. Представить шахматну доску с помощью нулей и единиц и написать метод, который определит цвет поля
 */
/*
Замечания
 1. Назначение Static
 2. Наименование функций - непосредственное значение в конце
 */

extension UInt8 {
    func binary() -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}

enum CheckList: Int {
    case bread = 0b00000001
    case chicken = 0b00000010
    case apples = 0b00000100
    case sugar = 0b00001000
}

extension CheckList {
    static func checkList(_ checkList: Int) -> String {
        let bread = (checkList & CheckList.bread.rawValue) == 0b00000000 ? "да" : "нет"
        let chicken = (checkList & CheckList.chicken.rawValue) == 0b00000000 ? "да" : "нет"
        let apples = (checkList & CheckList.apples.rawValue) == 0b00000000 ? "да" : "нет"
        let sugar = (checkList & CheckList.sugar.rawValue) == 0b00000000 ? "да" : "нет"
        return "В магазине куплены: хлеб - \(bread), курица - \(chicken), яблоки - \(apples), сахар - \(sugar)"
    }
}


var result = 0b00001010
print(CheckList.checkList(result))
// результат работы метода В магазине куплены: хлеб - да, курица - нет, яблоки - да, сахар - нет

func sinus(firstValue: UInt8) {
    var set = firstValue
    for var value in 0 ..< 2 {
        value += 1
        while (set << 1) != 0 {
            set = set << 1
            print(set.binary())
        }
        
        while (set >> 1) != 0 {
            set = set >> 1
            print(set.binary())
        }
    }
}

sinus(firstValue: 0b00001000)
// результат работы функции
//00010000
//00100000
//01000000
//10000000
//01000000
//00100000
// и так далее

var (numOne, numTwo, numTree, numFour) = (0b01010101, 0b10101010, 0b01010101, 0b10101010)
var (numFive, numSix, numSeven, numEight) = (0b01010101, 0b10101010, 0b01010101, 0b10101010)
var (lineA, lineB, lineC, lineD) = (0b10000000, 0b01000000, 0b00100000, 0b00010000)
var (lineI, lineF, lineG, lineH) = (0b00001000, 0b00000100, 0b00000010, 0b00000001)

func chessPieceColor(testLine: Int, testNum: Int) -> String {
    let color = ((testLine & testNum) == 0b00000000) ? "черное" : "белое"
    return "Цвет представленного поля \(color)"
}

print(chessPieceColor(testLine: lineA, testNum: numTree)) //черное
print(chessPieceColor(testLine: lineB, testNum: numFour)) //черное
print(chessPieceColor(testLine: lineC, testNum: numFive)) //черное
print(chessPieceColor(testLine: lineD, testNum: numTree)) //белое
//результат работы фукции
//Цвет представленного поля черное
//Цвет представленного поля черное
//Цвет представленного поля черное
//Цвет представленного поля белое
