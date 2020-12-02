//создать Enumeration  на подобие шахматных фигур = вып
// каждая фигура должна иметь ассоциотивное значение по цвету(белый черны) = вып
// каждая фигура должна иметь ассоциативное значени  по место положению (а2) = вып
// смоделировать ситуацию по которой черный король находится в положении мата = вып


//положить все фигуры в массив, все фигуры должны иметь rawValue type String
//создать функцию, которая принимает фигуру и печатает тип, цвет и позицию
//создать функцию которая принимает массив фигур, и использует предыдущую функцию


//создать функцию которая принимает массив фигур и рисовала доску с помощью юникода
//с фигурами на ней и цветом поля


//создать функцию которая принимает шахматную фигуру и tuple(буква и цифра)

enum СheessPiece {
    case king(color: ColorCheessPiece, vertikal: StartCheessBordSquarVertikal, gorizontal: StartCheessBordSquarGorizontal)
    case queen(color: ColorCheessPiece, vertikal: StartCheessBordSquarVertikal, gorizontal: StartCheessBordSquarGorizontal)
    case casle(color: ColorCheessPiece, vertikal: StartCheessBordSquarVertikal, gorizontal: StartCheessBordSquarGorizontal)
    case bishop(color: ColorCheessPiece, vertikal: StartCheessBordSquarVertikal, gorizontal: StartCheessBordSquarGorizontal)
    case knight(color: ColorCheessPiece, vertikal: StartCheessBordSquarVertikal, gorizontal: StartCheessBordSquarGorizontal)
    case pawn(color: ColorCheessPiece, vertikal: StartCheessBordSquarVertikal, gorizontal: StartCheessBordSquarGorizontal)
}
enum ColorCheessPiece: String {
    case black = "black"
    case white = "wight"
}
enum StartCheessBordSquarVertikal: String {
    case a = "a"
    case b = "b"
    case c = "c"
    case d = "d"
    case e = "e"
    case f = "f"
    case g = "g"
    case h = "h"
}
enum StartCheessBordSquarGorizontal: Int {
    case one = 1
    case two = 2
    case tree = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eught = 8
}

let cheessKingBlack = СheessPiece.king(color: .black, vertikal: .a, gorizontal: .one)
print(cheessKingBlack)
var cheessKingWhite = СheessPiece.king(color: .white, vertikal: .a, gorizontal: .tree)
//print(cheessKingWhite)
var cheessCasleWhite = СheessPiece.casle(color: .white, vertikal: .c, gorizontal: .one)
//print(cheessCasleWhite)
/*
func printCheessPiece(_ index: СheessPiece) {
    switch index {
    case .king:
        print("\(cheessKingBlack)")
    default:
        break
    }
}
printCheessPiece(cheessKingBlack)
*/
