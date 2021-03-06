/*
 1. Перегрузить операторы -, /, -=, /=, *, *=, --i, i-- для точки
 2. Создать структуру размер с свойствами ширина и длина.
 создать структуру прямоугольник который начинается от точки и размер из структуры размер
 3. Перегрузить операторы вычитания и сложения для прямоугольников
 4. Перегрузить оператор += для строк, что бы он принимал String
 5. Придумать оператор, который принимает String, и если элементы найдены в исходной строке то !lowerCase
 */
//1. Перегрузить операторы -, /, -=, /=, *, *=, --i, i-- для точки
import Foundation

struct Point {
    var x = 0
    var y = 0
    init (x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    init (x: Int) {
        self.x = x
    }
    
    init (y: Int) {
        self.y = y
    }
}

var point1 = Point(x: 6, y: 4)
var point2 = Point(x: 2, y: 2)

func -(point1: Point, point2: Point) -> Point {
    let resultPoint = Point(x: (point1.x - point2.x), y: (point1.y - point2.y))
    return resultPoint
}

point1 - point2 // Point(x: 4, y: 2)

func -=(point1: inout Point, point2: Point) -> Point {
    point1 = point1 - point2
    return point1
}

point1 -= point2
print(point1)// point1 = Point(x: 4, y: 2)

point1 = Point(x: 6, y: 4)
point2 = Point(x: 2, y: 2)

func /(point1: Point, point2: Point) -> Point {
    let resultPoint = Point(x: (point1.x / point2.x), y: (point1.y / point2.y))
    return resultPoint
}

point1 / point2 // Point(x: 3, y: 2)

func /=(point1: inout Point, point2: Point) -> Point {
    point1 = point1 / point2
    return point1
}

point1 /= point2
print(point1)// point1 = Point(x: 3, y: 2)

point1 = Point(x: 6, y: 4)
point2 = Point(x: 2, y: 2)

func *(point1: Point, point2: Point) -> Point {
    let resultPoint = Point(x: (point1.x * point2.x), y: (point1.y * point2.y))
    return resultPoint
}

point1 * point2 // Point(x: 12, y: 8)

func *=(point1: inout Point, point2: Point) -> Point {
    point1 = point1 * point2
    return point1
}

point1 *= point2
print(point1) // point1 = Point(x: 12, y: 8)

prefix func --(point1: inout Point) -> Point {
    let point = point1
    point1 = Point(x: (point1.x - 1), y: (point1.y - 1))
    return point
}

postfix func --(point1: inout Point) -> Point {
    point1 = Point(x: (point1.x - 1), y: (point1.y - 1))
    return point1
}

point1 = Point(x: 6, y: 4)
point2 = Point(x: 2, y: 2)
print(--point1)             // point1 = Point(x: 6, y: 4)
print(point1 -= point2)     // point1 = Point(x: 3, y: 1)
point1 = Point(x: 6, y: 4)
point2 = Point(x: 2, y: 2)
print(point1--)             // point1 = Point(x: 5, y: 3)
print(point1 -= point2)     // point1 = Point(x: 3, y: 1)

//2. Создать структуру размер с свойствами ширина и длина.
//создать структуру прямоугольник который имеет структуру Стартовая точка и структуру Размер
// 3. Перегрузить операторы вычитания и сложения для прямоугольников

struct Size {
    var height: Int = 0
    var lenght: Int = 0
    
    init (height: Int, lenght: Int) {
        self.height = height
        self.lenght = lenght
    }
    
    init (height: Int) {
        self.height = height
    }
    
    init (lenght: Int) {
        self.lenght = lenght
    }
}

struct Rectangle {
    var point = Point(x: 0, y: 0)
    var size = Size(height: 0, lenght: 0)
    
    var square: Int {
        let result = (size.height) * (size.lenght)
        return result
    }
}

var rectangle1 = Rectangle(point: Point(x: 0, y: 0), size: Size(height: 2, lenght: 3))
var rectangle2 = Rectangle(point: Point(x: 2, y: 1), size: Size(height: 2, lenght: 3))

func +(point: Point, line: Size) -> Point {
    let point1 = Point(x: point.x + line.lenght, y: point.y + line.height)
    return point1
}

if (rectangle1.point.x < rectangle2.point.x) && (rectangle2.point.x < (rectangle1.point.x + rectangle1.size.lenght)) {
    if (rectangle1.point.y < rectangle2.point.y) && (rectangle2.point.y < (rectangle1.point.y + rectangle1.size.height)) {
        var rectangleResult = Rectangle()
        rectangleResult.point = rectangle2.point
        rectangleResult.size = Size(height: (rectangle1.point.x + rectangle1.size.lenght) - rectangle2.point.x,
                                    lenght: (rectangle1.point.y + rectangle1.size.height) - rectangle2.point.y)
        // отнимаем площади пересекающихся прямоугольников (площадь 1 - площадь 2 + площадьСумм)
        let resultMinus = rectangle1.square - rectangle2.square + rectangleResult.square
        // складываем площади пересекающихся прямоугольников (площадь 1 + площадь 2 - площадьСумм)
        let resultPlus = rectangle1.square + rectangle2.square - rectangleResult.square
        print("Результат вычитани площадей прямоугольников - \(resultMinus)") // resultMinus = 1
        print("Результат сложения площадей прямоугольников - \(resultPlus)") // resultPlus = 11
    }
}

/* 4. Перегрузить оператор += для  String += Int */

func +=(str: String, integer: Int) -> String {
      let string = str + String(integer)
      return string
}

var str1 = "Hello, "
var str2 = 123
str1 += str2

//5. Придумать оператор, который принимает String, и если элементы найдены в исходной строке то !lowerCase

infix operator ***: MultiplicationPrecedence

func ***(str1: String, str2: String) -> String {
    let resultString = str1.components(separatedBy: str2)
    return resultString.joined(separator: str2.uppercased())
}

var string: String = "Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!"
let testString = "o"

var sr = string *** testString
