// создать функцию, которая ничего не принимает и ничего не возвращает, только принимает одно замыкание.
// клоужер тоже не должен ничего принимать и возвращать.
// в тело функции добавить цикл вида for от 1 до 3. В теле сделать print, который будет выводить цифры.
var closure = {() in
    print("это число")
}

func printInt() {
    for i in Range(1...3) {
        print("\(i) - ")
    }
    closure()
}

print(printInt())

func printInt2(action: () -> Void) {
    for i in Range(33...35) {
        print("\(i) -")
    }
    action()
}

printInt2() {
    print("big numbers")
}

// создать массив типа Int применить к нему функцию sorted из SwiftBook
var value = [5, 3, 7, 9, 6, 2, 8, 1, 6]
print("Исходные данные для работы функции sorted: \(value)")
print("Результат работы функции sorted: \(value.sorted(by: <))")

// написать функцию которая будет принимать массив Int и возвращать минимальное значение
func filter(array: [Int], filtered: (Int?, Int) -> Bool) -> Int {
    var number: Int?
    for i in array {
        if filtered(number, i) {
            number = i
        }
    }
    return number ?? 0
}

let max = filter(array: value) { (a, b) -> Bool in
    return a == nil || a! > b
}

print("Исходные данные для работы функции filter: \(value)")
print("Результат работы функции filter: \(max)")

// написать функцию которая будет принимать массив Int и возвращать отсортированный массив
func sortedArray(from array: [Int], filteredMax: (Int, [Int]) -> Int) -> [Int] {
    var cloneArray = array
    var resultArray = [Int]()
    for _ in array {
        let const = 0
        let maxValue = filteredMax(const, cloneArray)
        let maxValueIndex = cloneArray.firstIndex(of: maxValue)!
        cloneArray.remove(at: maxValueIndex)
        resultArray.append(maxValue)
    }
    return resultArray
}

let result = sortedArray(from: value) {index, array in
    var number = index
    for index in array {
        if number >= index {
        } else {
            number = index
        }
    }
    return number
}

print("Исходный массив для функции sortedArray \(value)")
print("Возвращаемый массив из функции sortedArray \(result)")

