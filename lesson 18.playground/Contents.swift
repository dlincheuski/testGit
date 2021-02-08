/* 1. Есть базовый клас артист, у него есть имя и фамилия и есть метод выступление
создать 4 класса танцор музыкант художник певец которые наследуюся от артиста
художник при попытке изменить имя должен оставлять свое имя
при вызове метода выступление должно печататься имя фамилия род занятий(используя полиформизм и массив) */

class Artist {
    var firstName: String
    var surname: String
    
    func printPerformance() -> String {
        return "\(firstName) \(surname) present today "
    }
    
    init(firstName: String, surname: String) {
        self.firstName = firstName
        self.surname = surname
    }
}

class Dancer : Artist {
    override func printPerformance() -> String {
        return super.printPerformance() + "dance perfornance"
    }
}

var dancer = Dancer(firstName: "Oleg", surname: "Vishnevsky")

class Painter : Artist {
    override var firstName: String {
        set {
            return
        }
        get {
            return super.firstName
        }
    }
    
    override var surname: String {
        set {
            return
        }
        get {
            return super.surname
        }
    }
    
    override func printPerformance() -> String {
        return super.printPerformance() + "paintic perfornance"
    }
}

var painter = Painter(firstName: "Pablo", surname: "Picassio")

class Singer : Artist {
    override func printPerformance() -> String {
        return super.printPerformance() + "singing perfornance"
    }
}

var singer = Singer(firstName: "Dmitry", surname: "Babushkin")

class Musican : Artist {
    override func printPerformance() -> String {
        return super.printPerformance() + "musical perfornance"
    }
}

var musican = Musican(firstName: "Vladimir", surname: "Nimerovich")

var allPerformances = [dancer, painter, singer, musican]

for value in allPerformances {
    print(value.printPerformance())
}

/* 2. Создать базовый класс транстпортное средство и у него будет 3 свойства скорость вместимовсть и стоимость 1 перевозки
 создать несколько дочерних классов самолет корабль вертолет машина поезд и у каждого по 1 обьекту
 определить сколько уйдет денег и времени что бы перевезти 100 и 10000 человек каждым из транспортных средств*/
class Transport {
    var speed: Int
    var capasity: Int
    var oneTripCost: Int
    var numberOfPeople: Int
        
    var costAllTrip: Int {
        return numberOfPeople * oneTripCost
    }
    
    var timeAllTrip: Int {
        return (numberOfPeople / capasity) * ((500 * 2) / speed) + 1
    }
    
    init(speed: Int, capasity: Int, oneTripCost: Int, numberOfPeople: Int) {
        self.speed = speed
        self.capasity = capasity
        self.oneTripCost = oneTripCost
        self.numberOfPeople = numberOfPeople
    }
    
}

class Airbus : Transport {
    
}

var airbus100 = Airbus(speed: 800, capasity: 105, oneTripCost: 100, numberOfPeople: 100)
var airbuss10000 = Airbus(speed: 800, capasity: 100, oneTripCost: 100, numberOfPeople: 10000)

class Helicopter : Transport {
    
}

var helicopter100 = Helicopter(speed: 250, capasity: 15, oneTripCost: 200, numberOfPeople: 100)
var helicopter10000 = Helicopter(speed: 250, capasity: 15, oneTripCost: 200, numberOfPeople: 10000)


class Train : Transport {
    
}

var train100 = Train(speed: 75, capasity: 350, oneTripCost: 50, numberOfPeople: 100)
var train10000 = Train(speed: 75, capasity: 350, oneTripCost: 50, numberOfPeople: 10000)


class Car : Transport {
    
}

var car100 = Car(speed: 120, capasity: 6, oneTripCost: 75, numberOfPeople: 100)
var car10000 = Car(speed: 120, capasity: 6, oneTripCost: 75, numberOfPeople: 10000)

var dataBases = [airbus100, helicopter100, train100, car100, airbuss10000, helicopter10000, train10000, car10000]

for value in dataBases {
    if value.numberOfPeople == 100 {
        print("\(value) для перевозки \(value.numberOfPeople) на 500 км понадобится \(value.costAllTrip) рублей и \(value.timeAllTrip)часов ")
    } else {
        print("\(value) для перевозки \(value.numberOfPeople) на 500 км понадобится \(value.costAllTrip) рублей и \(value.timeAllTrip)часов ")
    }
}

 /*3. Дано 5 классов люди обезьяны собаки жирафы крокодилы
 Создать родительский класс который группирает все пять классов. Создать по 2 экземпляра каждого класса
 Посчитать всех пресмыкающихся(создать массив,где размещаются только пресмыкающиеся), сколько четвероногих+, сколько животных, сколько живых существ*/
class Animal {
    
}

class Human : Animal {
    var animal = true
    var alive = true
    var leg = 2
    var reptiles = false
    
    init(animal: Bool, alive: Bool, leg: Int, reptiles: Bool) {
        self.animal = animal
        self.alive = alive
        self.leg = leg
        self.reptiles = reptiles
    }
}

var human1 = Human(animal: true, alive: true, leg: 2, reptiles: false)
var human2 = Human(animal: true, alive: true, leg: 2, reptiles: false)

class Monkey : Animal {
    var animal = true
    var alive = true
    var leg = 2
    var reptiles = false
    
    init(animal: Bool, alive: Bool, leg: Int, reptiles: Bool) {
        self.animal = animal
        self.alive = alive
        self.leg = leg
        self.reptiles = reptiles
    }
}

var monkey1 = Monkey(animal: true, alive: true, leg: 4, reptiles: false)
var monkey2 = Monkey(animal: true, alive: true, leg: 4, reptiles: false)

class Dog : Animal {
    var animal = true
    var alive = true
    var leg = 2
    var reptiles = false
    
    init(animal: Bool, alive: Bool, leg: Int, reptiles: Bool) {
        self.animal = animal
        self.alive = alive
        self.leg = leg
        self.reptiles = reptiles
    }
}

var dog1 = Dog(animal: true, alive: true, leg: 4, reptiles: false)
var dog2 = Dog(animal: true, alive: false, leg: 4, reptiles: false)

class Giraffe : Animal {
    var animal = true
    var alive = true
    var leg = 2
    var reptiles = false
    
    init(animal: Bool, alive: Bool, leg: Int, reptiles: Bool) {
        self.animal = animal
        self.alive = alive
        self.leg = leg
        self.reptiles = reptiles
    }
}

var giraffe1 = Giraffe(animal: true, alive: true, leg: 4, reptiles: false)
var giraffe2 = Giraffe(animal: true, alive: true, leg: 4, reptiles: false)

class Crocodile : Animal{
    var animal = true
    var alive = true
    var leg = 2
    var reptiles = true
    
    init(animal: Bool, alive: Bool, leg: Int, reptiles: Bool) {
        self.animal = animal
        self.alive = alive
        self.leg = leg
        self.reptiles = reptiles
    }
}

var crocodile1 = Crocodile(animal: true, alive: true, leg: 4, reptiles: true)
var crocodile2 = Crocodile(animal: true, alive: true, leg: 4, reptiles: true)

var animals = [human1, human2, monkey1, monkey2, dog1, dog2, giraffe1, giraffe2, crocodile1, crocodile2]

animals[0]

var selectAnimal = 0
var selectAlive = 0
var selectLeg = 0
var selectReptiles = 0
    
for value in animals {
    switch value {
    case .animal:
        selectAnimal += 1
        continue
    case .alive:
        selectAlive += 1
        continue
    case .leg:
        selectLeg += 1
        continue
    case .reptiles:
        selectReptiles += 1
        continue
        default:
            <#code#>
    }
}

print("Среди представленных элементов можно отнести: к животным \(selectAnimal), к живым \(selectAlive), к четвероногим \(selectLeg), к рептилиям \(selectReptiles)")
