/*создать Enumeration  на подобие шахматных фигур = вып
каждая фигура должна иметь ассоциотивное значение по цвету(белый черны) = вып
каждая фигура должна иметь ассоциативное значени  по место положению (а2) = вып
смоделировать ситуацию по которой черный король находится в положении мата = вып
положить все фигуры в массив, все фигуры должны иметь rawValue type String =  вып
создать функцию, которая принимает фигуру и печатает тип, цвет и позицию
создать функцию которая принимает массив фигур, и использует предыдущую функцию
создать функцию которая принимает массив фигур и рисовала доску с помощью юникода с фигурами на ней и цветом поля
создать функцию которая принимает шахматную фигуру и tuple(буква и цифра)*/
enum СhessPiece {
    case king(color: ColorChessPiece, vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal)
    case queen(color: ColorChessPiece, vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal)
    case castle(color: ColorChessPiece, vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal)
    case bishop(color: ColorChessPiece, vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal)
    case knight(color: ColorChessPiece, vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal)
    case pawn(color: ColorChessPiece, vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal)
    
    func changePlace(vertical: StartChessBoardSquarVertical, horizontal: StartChessBoardSquarHorizontal) -> СhessPiece {
        switch self {
        case .pawn(let color1, let vertical1, let horizontal1):
            if (vertical1.rawValue + horizontal1.rawValue) % 2 == 0 {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.whitePiece.rawValue
            } else {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.blackPiece.rawValue
            }
            return .pawn(color: color1, vertical: vertical, horizontal: horizontal)
        case .king(let color1, let vertical1, let horizontal1):
            if (vertical1.rawValue + horizontal1.rawValue) % 2 == 0 {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.whitePiece.rawValue
            } else {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.blackPiece.rawValue
            }
          return .king(color: color1, vertical: vertical, horizontal: horizontal)
        case .queen(let color1, let vertical1, let horizontal1):
            if (vertical1.rawValue + horizontal1.rawValue) % 2 == 0 {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.whitePiece.rawValue
            } else {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.blackPiece.rawValue
            }
          return .queen(color: color1, vertical: vertical, horizontal: horizontal)
        case .knight(let color1, let vertical1, let horizontal1):
            if (vertical1.rawValue + horizontal1.rawValue) % 2 == 0 {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.whitePiece.rawValue
            } else {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.blackPiece.rawValue
            }
          return .knight(color: color1, vertical: vertical, horizontal: horizontal)
        case .castle(let color1, let vertical1, let horizontal1):
            if (vertical1.rawValue + horizontal1.rawValue) % 2 == 0 {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.whitePiece.rawValue
            } else {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.blackPiece.rawValue
            }
          return .castle(color: color1, vertical: vertical, horizontal: horizontal)
        case .bishop(let color1, let vertical1, let horizontal1):
            if (vertical1.rawValue + horizontal1.rawValue) % 2 == 0 {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.whitePiece.rawValue
            } else {
                startPositionArray[horizontal1.rawValue - 1][vertical1.rawValue - 1] = ColorChessPiece.blackPiece.rawValue
            }
          return .bishop(color: color1, vertical: vertical, horizontal: horizontal)
        }
    }
}

enum ColorChessPiece: String {
    case blackPiece = "\u{25A1}"
    case blackKing = "\u{2654}"
    case blackQueen = "\u{2655}"
    case blackCastle = "\u{2656}"
    case blackBishop = "\u{2657}"
    case blackKnight = "\u{2658}"
    case blackPawn = "\u{2659}"
    case whitePiece = "\u{25A0}"
    case whiteKing = "\u{265A}"
    case whiteQueen = "\u{265B}"
    case whiteCastle = "\u{265C}"
    case whiteBishop = "\u{265D}"
    case whiteKnight = "\u{265E}"
    case whitePawn = "\u{265F}"
}

enum StartChessBoardSquarVertical: Int{
    case a = 1
    case b = 2
    case c = 3
    case d = 4
    case e = 5
    case f = 6
    case g = 7
    case h = 8
}

enum StartChessBoardSquarHorizontal: Int {
    case one = 1
    case two = 2
    case tree = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
}
// инициализация
var chessKingBlack = СhessPiece.king(color: .blackKing, vertical: .e, horizontal: .eight)
var chessQueenBlack = СhessPiece.queen(color: .blackQueen, vertical: .d, horizontal: .eight)
var chessCastleBlack1 = СhessPiece.castle(color: .blackCastle, vertical: .a, horizontal: .eight)
var chessCastleBlack2 = СhessPiece.castle(color: .blackCastle, vertical: .h, horizontal: .eight)
var chessBishopBlack1 = СhessPiece.bishop(color: .blackBishop, vertical: .c, horizontal: .eight)
var chessBishopBlack2 = СhessPiece.bishop(color: .blackBishop, vertical: .f, horizontal: .eight)
var chessKnightBlack1 = СhessPiece.knight(color: .blackKnight, vertical: .b, horizontal: .eight)
var chessKnightBlack2 = СhessPiece.knight(color: .blackKnight, vertical: .g, horizontal: .eight)
var chessPawnBlack1 = СhessPiece.pawn(color: .blackPawn, vertical: .a, horizontal: .seven)
var chessPawnBlack2 = СhessPiece.pawn(color: .blackPawn, vertical: .b, horizontal: .seven)
var chessPawnBlack3 = СhessPiece.pawn(color: .blackPawn, vertical: .c, horizontal: .seven)
var chessPawnBlack4 = СhessPiece.pawn(color: .blackPawn, vertical: .d, horizontal: .seven)
var chessPawnBlack5 = СhessPiece.pawn(color: .blackPawn, vertical: .e, horizontal: .seven)
var chessPawnBlack6 = СhessPiece.pawn(color: .blackPawn, vertical: .f, horizontal: .seven)
var chessPawnBlack7 = СhessPiece.pawn(color: .blackPawn, vertical: .g, horizontal: .seven)
var chessPawnBlack8 = СhessPiece.pawn(color: .blackPawn, vertical: .h, horizontal: .seven)

var chessKingWhite = СhessPiece.king(color: .whiteKing, vertical: .e, horizontal: .one)
var chessQueenWhite = СhessPiece.queen(color: .whiteQueen, vertical: .d, horizontal: .one)
var chessCastleWhite1 = СhessPiece.castle(color: .whiteCastle, vertical: .a, horizontal: .one)
var chessCastleWhite2 = СhessPiece.castle(color: .whiteCastle, vertical: .h, horizontal: .one)
var chessBishopWhite1 = СhessPiece.bishop(color: .whiteBishop, vertical: .c, horizontal: .one)
var chessBishopWhite2 = СhessPiece.bishop(color: .whiteBishop, vertical: .f, horizontal: .one)
var chessKnightWhite1 = СhessPiece.knight(color: .whiteKnight, vertical: .b, horizontal: .one)
var chessKnightWhite2 = СhessPiece.knight(color: .whiteKnight, vertical: .g, horizontal: .one)
var chessPawnWhite1 = СhessPiece.pawn(color: .whitePawn, vertical: .a, horizontal: .two)
var chessPawnWhite2 = СhessPiece.pawn(color: .whitePawn, vertical: .b, horizontal: .two)
var chessPawnWhite3 = СhessPiece.pawn(color: .whitePawn, vertical: .c, horizontal: .two)
var chessPawnWhite4 = СhessPiece.pawn(color: .whitePawn, vertical: .d, horizontal: .two)
var chessPawnWhite5 = СhessPiece.pawn(color: .whitePawn, vertical: .e, horizontal: .two)
var chessPawnWhite6 = СhessPiece.pawn(color: .whitePawn, vertical: .f, horizontal: .two)
var chessPawnWhite7 = СhessPiece.pawn(color: .whitePawn, vertical: .g, horizontal: .two)
var chessPawnWhite8 = СhessPiece.pawn(color: .whitePawn, vertical: .h, horizontal: .two)
 
var piecesArray = [chessKingBlack, chessQueenBlack, chessCastleBlack1, chessCastleBlack2, chessBishopBlack1, chessBishopBlack2, chessKnightBlack1, chessKnightBlack2, chessPawnBlack1, chessPawnBlack2, chessPawnBlack3, chessPawnBlack4, chessPawnBlack5, chessPawnBlack6, chessPawnBlack7, chessKingWhite, chessQueenWhite, chessCastleWhite1, chessCastleWhite2, chessBishopWhite1, chessBishopWhite2, chessKnightWhite1, chessKnightWhite2, chessPawnWhite1, chessPawnWhite2, chessPawnWhite3, chessPawnWhite4, chessPawnWhite5, chessPawnWhite6, chessPawnWhite7, chessPawnWhite8]
// стартовая позиция
var firstHorisontalArray = [ColorChessPiece.blackCastle.rawValue, ColorChessPiece.blackKnight.rawValue, ColorChessPiece.blackBishop.rawValue, ColorChessPiece.blackQueen.rawValue, ColorChessPiece.blackKing.rawValue, ColorChessPiece.blackBishop.rawValue, ColorChessPiece.blackKnight.rawValue, ColorChessPiece.blackCastle.rawValue]
var secondHorisontalArray = [ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue, ColorChessPiece.blackPawn.rawValue]
var thirdHorisontalArray = [ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue]
var quartersHorisontalArray = [ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue]
var fifthHorisontalArray = [ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue]
var sixthHorisontalArray = [ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue, ColorChessPiece.whitePiece.rawValue, ColorChessPiece.blackPiece.rawValue]
var seventhHorisontalArray = [ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue, ColorChessPiece.whitePawn.rawValue]
var eighthHorisontalArray = [ColorChessPiece.whiteCastle.rawValue, ColorChessPiece.whiteKnight.rawValue, ColorChessPiece.whiteBishop.rawValue, ColorChessPiece.whiteQueen.rawValue, ColorChessPiece.whiteKing.rawValue, ColorChessPiece.whiteBishop.rawValue, ColorChessPiece.whiteKnight.rawValue, ColorChessPiece.whiteCastle.rawValue]
var startPositionArray = [eighthHorisontalArray, seventhHorisontalArray, sixthHorisontalArray, fifthHorisontalArray, quartersHorisontalArray, thirdHorisontalArray, secondHorisontalArray, firstHorisontalArray]
for value in startPositionArray {
    print("\(value[0]) \(value[1]) \(value[2]) \(value[3]) \(value[4]) \(value[5]) \(value[6]) \(value[7])")
}

func move(pieceNew: СhessPiece) {
    switch pieceNew {
    case .pawn(let color, let vertical, let horizontal):
        if color == .whitePawn {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.whitePawn.rawValue
        } else if color == .blackPawn {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.blackPawn.rawValue
        }
    case .king(let color, let vertical, let horizontal):
        if color == .whiteKing {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.whiteKing.rawValue
        } else if color == .blackKing {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.blackKing.rawValue
        }
    case .queen(let color, let vertical, let horizontal):
        if color == .whiteQueen {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.whiteQueen.rawValue
        } else if color == .blackQueen {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.blackQueen.rawValue
        }
    case .castle(let color, let vertical, let horizontal):
        if color == .whiteCastle {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.whiteCastle.rawValue
        } else if color == .blackCastle {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.blackCastle.rawValue
        }
    case .bishop(let color, let vertical, let horizontal):
        if color == .whiteBishop {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.whiteBishop.rawValue
        } else if color == .blackBishop {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.blackBishop.rawValue
        }
    case .knight(let color, let vertical, let horizontal):
        if color == .whiteKnight {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.whiteKnight.rawValue
        } else if color == .blackKnight {
            startPositionArray[horizontal.rawValue - 1][vertical.rawValue - 1] = ColorChessPiece.blackKnight.rawValue
        }
    }
    for value in startPositionArray {
        print("\(value[0]) \(value[1]) \(value[2]) \(value[3]) \(value[4]) \(value[5]) \(value[6]) \(value[7])")
    }
    print("")
}

func turn(figure: СhessPiece, turnVertical: StartChessBoardSquarVertical, turnHorizontal: StartChessBoardSquarHorizontal) {
    print("your turn \(turnVertical)\(turnHorizontal.rawValue)")
    print("")
    move(pieceNew: figure.changePlace(vertical: turnVertical, horizontal: turnHorizontal))
}

turn(figure: chessPawnWhite5, turnVertical: .e, turnHorizontal: .four)
turn(figure: chessPawnBlack5, turnVertical: .e, turnHorizontal: .five)
turn(figure: chessKnightWhite1, turnVertical: .c, turnHorizontal: .tree)
turn(figure: chessKnightBlack1, turnVertical: .c, turnHorizontal: .six)
turn(figure: chessBishopWhite2, turnVertical: .c, turnHorizontal: .four)
turn(figure: chessBishopBlack2, turnVertical: .c, turnHorizontal: .five)
