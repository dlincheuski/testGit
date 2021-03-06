/* 1. Есть базовый клас артист, у него есть имя и фамилия и есть метод выступление
создать 4 класса танцор музыкант художник певец которые наследуюся от артиста
художник при попытке изменить имя должен оставлять свое имя
при вызове метода выступление должно печататься имя фамилия род занятий(используя полиформизм и массив) */

class Artist { 
    var firstName: String
    var surname: String
    
    func performanceInfo() -> String {
        return "\(firstName) \(surname) present today "
    }
    
    init(firstName: String, surname: String) {
        self.firstName = firstName
        self.surname = surname
    }
}

class Dancer: Artist {
    override func performanceInfo() -> String {
        return super.performanceInfo() + "dance performance"
    }
}

var dancer = Dancer(firstName: "Oleg", surname: "Vishnevsky")

class Painter: Artist {
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
    
    override func performanceInfo() -> String {
        return super.performanceInfo() + "paintic perfornmance"
    }
}

var painter = Painter(firstName: "Pablo", surname: "Picassio")

class Singer: Artist {
    override func performanceInfo() -> String {
        return super.performanceInfo() + "singing perfornamce"
    }
}

var singer = Singer(firstName: "Dmitry", surname: "Babushkin")

class Musician: Artist {
    override func performanceInfo() -> String {
        return super.performanceInfo() + "musical performance"
    }
}

var musician = Musician(firstName: "Vladimir", surname: "Nimerovich")
var artists = [dancer, painter, singer, musician]

for artist in artists {
    print(artist.performanceInfo())
}

/* 2. Создать базовый класс транстпортное средство и у него будет 3 свойства скорость вместимовсть и стоимость 1 перевозки
 создать несколько дочерних классов самолет корабль вертолет машина поезд и у каждого по 1 обьекту
 определить сколько уйдет денег и времени что бы перевезти 100 и 10000 человек каждым из транспортных средств*/

class Transport {
    var speed: Int
    var capacity: Int
    var ticketCost: Int
    var numberOfPeople: Int
        
    var tripCost: Int {
        return numberOfPeople * ticketCost
    }
    
    var tripTime: Int {
        return (numberOfPeople / capacity) * ((500 * 2) / speed) + 1
    }
    
    init(speed: Int, capacity: Int, ticketCost: Int, numberOfPeople: Int) {
        self.speed = speed
        self.capacity = capacity
        self.ticketCost = ticketCost
        self.numberOfPeople = numberOfPeople
    }
    
}

class Airbus: Transport {}

var airbus100 = Airbus(speed: 800, capacity: 105, ticketCost: 100, numberOfPeople: 100)
var airbuss10000 = Airbus(speed: 800, capacity: 100, ticketCost: 100, numberOfPeople: 10000)

class Helicopter: Transport {}

var helicopter100 = Helicopter(speed: 250, capacity: 15, ticketCost: 200, numberOfPeople: 100)
var helicopter10000 = Helicopter(speed: 250, capacity: 15, ticketCost: 200, numberOfPeople: 10000)


class Train: Transport {}

var train100 = Train(speed: 75, capacity: 350, ticketCost: 50, numberOfPeople: 100)
var train10000 = Train(speed: 75, capacity: 350, ticketCost: 50, numberOfPeople: 10000)


class Car: Transport {}

var car100 = Car(speed: 120, capacity: 6, ticketCost: 75, numberOfPeople: 100)
var car10000 = Car(speed: 120, capacity: 6, ticketCost: 75, numberOfPeople: 10000)

var transports = [airbus100, helicopter100, train100, car100, airbuss10000, helicopter10000, train10000, car10000]

for transport in transports {
    if transport.numberOfPeople == 100 {
        print("\(transport) для перевозки \(transport.numberOfPeople) на 500 км понадобится \(transport.tripCost) рублей и \(transport.tripTime)часов ")
    } else {
        print("\(transport) для перевозки \(transport.numberOfPeople) на 500 км понадобится \(transport.tripCost) рублей и \(transport.tripTime)часов ")
    }
}

 /*3. Дано 5 классов люди обезьяны собаки жирафы крокодилы
 Создать родительский класс который группирает все пять классов. Создать по 2 экземпляра каждого класса
 Посчитать всех пресмыкающихся(создать массив,где размещаются только пресмыкающиеся), сколько четвероногих+, сколько животных, сколько живых существ*/

class Human {
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

class Monkey {
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

class Dog {
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

class Giraffe {
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

class Crocodile {
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

var animals = [AnyObject]()
animals = [human1, human2, monkey1, monkey2, dog1, dog2, giraffe1, giraffe2, crocodile1, crocodile2]
var classes = [AnyClass]()
classes = [Human.self, Monkey.self, Dog.self, Giraffe.self, Crocodile.self]
var selectedAnimal = [AnyObject]()
var selectedAlive = [AnyObject]()
var selectedLeg = [AnyObject]()
var selectedReptiles = [AnyObject]()

for animal in animals {
    if let animalType = animal as? Human {
        if animalType.animal {
            selectedAnimal.append(animalType)
        }
        if animalType.alive {
            selectedAlive.append(animalType)
        }
        if animalType.leg == 4 {
            selectedLeg.append(animalType)
        }
        if animalType.reptiles {
            selectedReptiles.append(animalType)
        }
    }
    
    if let animalType = animal as? Monkey {
        if animalType.animal {
            selectedAnimal.append(animalType)
        }
        if animalType.alive {
            selectedAlive.append(animalType)
        }
        if animalType.leg == 4 {
            selectedLeg.append(animalType)
        }
        if animalType.reptiles {
            selectedReptiles.append(animalType)
        }
    }
    
    if let animalType = animal as? Dog {
        if animalType.animal {
            selectedAnimal.append(animalType)
        }
        if animalType.alive {
            selectedAlive.append(animalType)
        }
        if animalType.leg == 4 {
            selectedLeg.append(animalType)
        }
        if animalType.reptiles {
            selectedReptiles.append(animalType)
        }
    }
    
    if let animalType = animal as? Giraffe {
        if animalType.animal {
            selectedAnimal.append(animalType)
        }
        if animalType.alive {
            selectedAlive.append(animalType)
        }
        if animalType.leg == 4 {
            selectedLeg.append(animalType)
        }
        if animalType.reptiles {
            selectedReptiles.append(animalType)
        }
    }
    
    if let animalType = animal as? Crocodile {
        if animalType.animal {
            selectedAnimal.append(animalType)
        }
        if animalType.alive {
            selectedAlive.append(animalType)
        }
        if animalType.leg == 4 {
            selectedLeg.append(animalType)
        }
        if animalType.reptiles {
            selectedReptiles.append(animalType)
        }
    }
}

print("Всего животных \(selectedAnimal.count)")
print("Всего живущих \(selectedAlive.count)")
print("Всего четвероногих \(selectedLeg.count)")
print("Всего рептилий \(selectedReptiles.count)")
