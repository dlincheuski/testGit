protocol Thing {
    var name: String { get }
}

protocol Food: Thing {}

// съедобное
protocol Storable: Thing {
    var spoiled: Bool { get }
    var dayToSpoiled: Int { get }
}

class Milk: Food, Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
    
}

let cowMilk = Milk(name: "Cow milk")
cowMilk.spoiled = true

let goatMilk = Milk(name: "Goat milk")
goatMilk.dayToSpoiled = 4

class Bread: Food, Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let whiteBread = Bread(name: "White bread")
whiteBread.dayToSpoiled = 3

let blackBread = Bread(name: "Black bread")
blackBread.spoiled = true

class Wine: Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let dryWine = Wine(name: "Dry wine")
dryWine.dayToSpoiled = 70

let sweetWine = Wine(name: "Sweet wine")
sweetWine.dayToSpoiled = 70

class Meat: Food, Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let beef = Meat(name: "Beaf")
beef.dayToSpoiled = 15

let pork = Meat(name: "Pork")
pork.dayToSpoiled = 13

let mutton = Meat(name: "Mutton")
mutton.spoiled = true

class Juice: Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let orangeJuice = Juice(name: "Orange juice")
orangeJuice.dayToSpoiled = 95

let grapeJuice = Juice(name: "Grape juice")
grapeJuice.dayToSpoiled = 90

let appleJuice = Juice(name: "Apple juice")
appleJuice.dayToSpoiled = 86

class Butter: Food, Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let butter = Butter(name: "Butter")
butter.dayToSpoiled = 20

let margarine = Butter(name: "Margarine")
margarine.spoiled = true

class Apple: Food, Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let apple = Apple(name: "Apple")
apple.dayToSpoiled = 13

class Cheese: Food, Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let parmezan = Cheese(name: "Parmezan")

let chezerra = Cheese(name: "Chezerra")
chezerra.name = "Chezerra"

class Pill: Storable {
    var storable: Bool
    var spoiled: Bool
    var name: String
    var dayToSpoiled: Int
    
    init(storable: Bool = true, spoiled: Bool = false, name: String, dayToSpoiled: Int = 0) {
        self.storable = storable
        self.spoiled = spoiled
        self.name = name
        self.dayToSpoiled = dayToSpoiled
    }
}

let aspirin = Pill(name: "Aspirin")
aspirin.dayToSpoiled = 33

let diphenhydramine = Pill(name: "Diphenhydramine")
diphenhydramine.spoiled = true

let valerian = Pill(name: "Valerian")
valerian.dayToSpoiled = 90

//создаю массив вещей в сумке типа Thing, что бы освоить функцию map
var bagWithThings: [Thing] = [cowMilk, goatMilk, whiteBread, blackBread, dryWine, sweetWine, beef, pork, mutton, orangeJuice, grapeJuice, appleJuice, butter, margarine, apple, parmezan, chezerra, aspirin, diphenhydramine, valerian]
// создаю аналогичный массив но с опциональным типом, что бы освоить функцию flatMap
var bagWithThings1: [Thing?] = [cowMilk, goatMilk, whiteBread, nil, blackBread, dryWine, sweetWine, beef, pork, mutton, orangeJuice, grapeJuice, appleJuice, butter, margarine, apple, parmezan, nil, chezerra, aspirin, diphenhydramine, valerian]
//применяем функцию filter что бы получить из массива все имена элементов, начинающиеся на С
print(bagWithThings.filter { $0.name.hasPrefix("C") }.map { $0.name }) //["Cow milk", "Chezerra"]
print("")
//применяем функцию map что бы получить имена всех элементов массива bagWithThings в массиве типа String
print(bagWithThings.map { $0.name })//["Cow milk", ..., "Valerian"]
print("")
//применяем функцию map что бы получить имена всех элементов массива bagWithThings одной строкой
print(bagWithThings.map { $0.name }.joined(separator: ", "))//"Cow milk, ..., Valerian"
print("")
//применяем функцию flatMap что бы получить имена всех элементов массива bagWithThings в массиве типа String?
print(bagWithThings1.flatMap { $0 }.flatMap { $0.name }.joined(separator: ", "))//["Cow milk", ..., "Valerian"]
//наполняем мусорку испорченными продуктами, а холодильник продуктоми со сроком годности
var thingsInRefregitator = [Thing]()
var thingsInTrash = [Thing]()

for thing in bagWithThings {
    guard let thingStorable = thing as? Storable else { continue }
    if thingStorable.spoiled {
        thingsInTrash.append(thingStorable)
    } else {
        thingsInRefregitator.append(thingStorable)
    }
}

print(thingsInTrash.map { $0.name }.sorted(by: <)) //["Black bread", "Cow milk", "Diphenhydramine", "Margarine", "Mutton"]
print(thingsInRefregitator.map { $0.name }) //["Goat milk", ..., "Valerian"]
//создаем массив типа Int сроков годности продоктов, что бы применить функцию reduce для подсчета суммарного колличества дней срока годности
var dayToSpoiledCount = [Int]()

for dayToSpoiled in bagWithThings {
    guard let dayToSpoiledStorable = dayToSpoiled as? Storable else { continue }
    dayToSpoiledCount.append(dayToSpoiledStorable.dayToSpoiled)
}

print(dayToSpoiledCount) // [0, 4, 3, 0, 70, 70, 15, 13, 0, 95, 90, 86, 20, 0, 13, 0, 0, 33, 0, 90]
print(dayToSpoiledCount.reduce(0, +)) // 602
