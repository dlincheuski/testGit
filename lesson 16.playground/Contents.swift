/* Создать тип комната, у нее есть ширина и длина
Задать тип персонаж и ящик, у него есть 2 точки - его позиция в комнате
Реализовать функцию которая будет печатать комнату, персонаж внутри, коробка, точка назначения для коробки
Реализовать для персонажа метод идти и в этот метод передавать значение энума(вверх, вниз, вправо, влево)
Реализовать правила, что бы персонаж и коробка не могли выходить за пределы комнаты
Реализовать окончания игры, когда ящик на точке выхода
 */
struct Room {
    var widthX: Int
    var lenghtY: Int
}

struct Human {
    var widthX: Int
    var lenghtY: Int
}

struct Box {
    var widthX: Int
    var lenghtY: Int
}

struct FinishPoint {
    var widthX: Int
    var lenghtY: Int
}

// инициализация комнаты, персонажа, ящика, конечной точки
var room = Room(widthX: 7, lenghtY: 7)
var human = Human(widthX: 5, lenghtY: 5)
var box = Box(widthX: 2, lenghtY: 2)
var finishPoint = FinishPoint(widthX: 1, lenghtY: 1)

// реализация функции печати комнаты
func printRoom(x: Int, y: Int) {
    for coordinateX in 0 ..< x {
        var roomLenghtYCoordinates = [Character]()
        for coordinateY in 0 ..< y {
            switch (coordinateX, coordinateY) {
                case (human.lenghtY, human.widthX):
                    roomLenghtYCoordinates.append("\u{20dd}")
                case (box.lenghtY, box.widthX):
                    roomLenghtYCoordinates.append("\u{2042}")
                case (finishPoint.lenghtY, finishPoint.widthX):
                    roomLenghtYCoordinates.append("\u{2714}")
                default:
                    roomLenghtYCoordinates.append("\u{205c}")
            }
        }
        print("\(roomLenghtYCoordinates)")
    }
}

// реализация функции движения с помощью энума, с ограничениями правил выхода за пределы персонажа и ящика
enum Move {
    case left
    case right
    case up
    case down
}

func moveHuman(move: Move) {
    let horizontalBorder = room.widthX
    let verticalBorder = room.lenghtY
    switch move {
    case .left:
        print("You choise move left")
        if human.widthX <=  0 || box.widthX <= 0 {
            print("stop wall there")
        } else {
            human.widthX -= 1
            if human.widthX == box.widthX && human.lenghtY == box.lenghtY {
                box.widthX -= 1
            }
        }
    case .right:
        print("You choise move right")
        if human.widthX >= horizontalBorder - 1 || box.widthX >= horizontalBorder - 1 {
            print("stop wall there")
        } else {
            human.widthX += 1
            if human.widthX == box.widthX && human.lenghtY == box.lenghtY {
                box.widthX += 1
            }
        }
    case .up:
        print("You choise move up")
        if human.lenghtY <= 0 || box.lenghtY <= 0 {
            print("stop wall there")
        } else {
            human.lenghtY -= 1
            if human.lenghtY == box.lenghtY && human.widthX == box.widthX {
                box.lenghtY -= 1
            }
        }
    case .down:
        print("You choise move down")
        if human.lenghtY >= verticalBorder - 1 || box.lenghtY >= verticalBorder - 1 {
            print("stop wall there")
        } else {
            human.lenghtY += 1
            if human.lenghtY == box.lenghtY && human.widthX == box.widthX {
                    box.lenghtY += 1
            }
        }
    }

    print("")
    printRoom(x: room.lenghtY, y: room.widthX)
    print("")
    
    if box.lenghtY == finishPoint.lenghtY && box.widthX == finishPoint.widthX {
        print("you win")
    } else {
        print("Whats you next move?")
    }
}
    

moveHuman(move: .left)
moveHuman(move: .left)
moveHuman(move: .left)
moveHuman(move: .up)
moveHuman(move: .up)
moveHuman(move: .up)
moveHuman(move: .right)
moveHuman(move: .up)
moveHuman(move: .left)
