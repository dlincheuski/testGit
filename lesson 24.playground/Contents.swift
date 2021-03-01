/*
 1. Расширить Int добавив в него методы isNegative isPositive отрицательные числа, положительные числа) через Bool
 2. Расширить Int добавив в него метод isNotZero(все значения кроме нуля должны возвращать true)
 3. Расширить Int добавив в него метод howManySymbolInNumber(возвращенное значение это колличество цифр в числе)
 4. Расширить Int добавив в него сабскрипт, который указвает цифру в числе по местоположению с конца
 5. Расширить String добавив в него сабскрипт, [0...5] что бы он вырезал или заменял указанный элемент на другой
 6. Расширить String добавив в него метод Truncate, который бы оставлял от строки указанное число символов, а оставшиеся заменял на многоточие
 */
import Foundation

extension Int {
    var  isNegative: Bool {
        return (self < 0) ? true : false
    }
    
    var isPositive: Bool {
        return (self > 0) ? true : false
    }
    
    var isNotZero: Bool {
        return self == 0 ? false : true
    }
    
    var howManySymbolInNumbers: Int {
        get {
            var count = 1
            var value = self
            while (value / 10) > 0 {
                count += 1
                value /= 10
            }
            return count
        }
    }
    
    subscript(number: Int) -> Int {
        get {
            let divider = 10
            var value = self
            var result = 0
            for _ in 0 ..< number + 1 {
                result = value % divider
                value = value / 10
            }
            return result
        }
    }
}

extension String {
    subscript(_ value: Range<Data.Index>) -> String {
        get {
            let start = self.index(self.startIndex, offsetBy: value.startIndex)
            let end = self.index(self.startIndex, offsetBy: value.endIndex - 1)
            let range = start..<end
            return String(self[range])
        }
        
        set(newValue) {
            let start = self.index(self.startIndex, offsetBy: value.endIndex)
            let end = self.index(self.startIndex, offsetBy: self.count)
            let range = start..<end
            self = newValue + String(self[range])
        }
    }

    func truncate(_ value: Int) -> String {
        var result = ""
        if value < self.count {
            result = self
            let start = self.index(self.startIndex, offsetBy: 0)
            let end = self.index(self.startIndex, offsetBy: value)
            let range = start..<end
            return String(self[range]) + "..."

        }
        
        if value >= self.count {
            result = self
            return result
        }
        return ""
    }
}
12345.isNegative
12345.isPositive
12345.isNotZero
12345.howManySymbolInNumbers
12345[0]
var string = "Hello, World"
string[0..<5]
string[0..<5] = "Hi"
string
"Hello, World".truncate(11)


