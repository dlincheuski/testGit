/*
 1. Создать класс человек. У него должны быть свойства: Папа Мама Братья Сестры (массивы), все опционально
 создать 20 экземпляров класса, создать для одного из них папу и маму
 Папе и маме тоже поставить братьев сестер пап мам(все проперти опциональны-могут быть могут отсутствовать)
 Посчитать для главного героя количество двоюродных братьев, дядь и теть используя опциональные цепочки
 2. Создать класс мущина и женщина , унаследованные от класса Человек.
 У всех мужчин сделать метод Двигать диван, у женщин Готовить еду.
 Создать массив со всеми экземплярами класса. Посчитать сколько среди людей мужчин, женщин, и для
 каждого вызвать его метод.
 3 Создать для класса человек свойство - Домашнее животное(попугай, кошка, собака)
 Пройтись по массиву людей, определить есть ли у них животное, если животное есть оперделить их
 к одному из 3 типов Кошатники, Собачники, Птичники
 4. Все животные унаследованы от класса животные, в котором есть метод издать звук.
 При прохождении по массиву животных каждое из них должно издавать свой крик
 */

class Human {
    var name: String
    var dad: Human?
    var mom: Human?
    var brothers: [Human]
    var sisters: [Human]
    var pet: Animal.Pets
    
    class Animal {
        enum Pets: String {
            case dog = "Gav Gav"
            case cat = "Myaffff"
            case caw = "Muuuuu"
            case noPet = "I like Giraffe"
        }
        
        func descriptionPetVoice(pet: Pets) ->String {
                switch pet {
                case .dog:
                    return Pets.dog.rawValue
                case .cat:
                    return Pets.cat.rawValue
                case .caw:
                    return Pets.caw.rawValue
                case .noPet:
                    return Pets.noPet.rawValue
                }
        }
    }

    init(name: String, dad: Human? = nil, mom: Human? = nil, brothers: [Human] = [], sisters: [Human] = [], pet: Animal.Pets = .noPet) {
        self.name = name
        self.dad = dad
        self.mom = mom
        self.brothers = brothers
        self.sisters = sisters
        self.pet = pet
    }
}

class Man: Human {
    func move() {
        print("I go move sofa")
    }
}

class Woman: Human {
    func move() {
        print("I go to cook dinner")
    }
}

let humanMisha = Human(name: "Misha")
let humanMasha = Human(name: "Masha")
let humanSasha = Human(name: "Sasha")
let humanKolya = Human(name: "Kolya")
let humanLiza = Human(name: "Liza")
let humanDima = Human(name: "Dima")
let humanVera = Human(name: "Vera")
let humanVova = Human(name: "Vova")
let humanPetr = Human(name: "Petr")
let humanSlava = Human(name: "Slava")
let humanLena = Human(name: "Lena")
let humanOleg = Human(name: "Oleg")
let humanMira = Human(name: "Mira")
let humanMila = Human(name: "Mila")
let humanValya = Human(name: "Valya")

humanMisha.dad = humanKolya
humanMisha.mom = humanLiza
humanMisha.brothers = [humanSasha]
humanMisha.sisters = [humanMasha]
humanMisha.pet = .dog

humanMasha.dad = humanKolya
humanMasha.mom = humanLiza
humanMasha.brothers = [humanMisha, humanSasha]

humanSasha.dad = humanKolya
humanSasha.mom = humanLiza
humanSasha.brothers = [humanMisha]
humanSasha.sisters = [humanMasha]
humanSasha.pet = .cat

humanKolya.dad = humanDima
humanKolya.mom = humanVera
humanKolya.brothers = [humanVova]

humanLiza.dad = humanOleg
humanLiza.mom = humanMira
humanLiza.sisters = [humanLena]
humanLiza.pet = .caw

humanVera.pet = .dog

humanVova.dad = humanDima
humanVova.mom = humanVera
humanVova.brothers = [humanKolya]

humanPetr.dad = humanVova
humanPetr.brothers = [humanSlava]
humanPetr.pet = .cat

humanSlava.dad = humanVova
humanSlava.brothers = [humanPetr]

humanLena.dad = humanOleg
humanLena.mom = humanMira
humanLena.sisters = [humanLiza]
humanLena.pet = .caw

humanMira.pet = .dog

humanMila.mom = humanLena
humanMila.sisters = [humanValya]

humanValya.mom = humanLena
humanValya.sisters = [humanMila]
humanValya.pet = .dog

var socialNetwork = [humanMisha, humanMasha, humanSasha, humanKolya, humanLiza, humanDima, humanVera, humanVova, humanPetr, humanSlava, humanLena, humanOleg, humanMira, humanMila, humanValya]

func cousinsCount(human: Human) ->Int {
    var cousins = 0
    
    for brother in socialNetwork {
        guard let brothers = brother.dad?.brothers, let dadName = human.dad?.name else {continue}
        for brother in 0 ..< brothers.count {
            if brothers[brother].name == dadName {
                cousins += 1
            }
        }
    }
    
    for sister in socialNetwork {
        guard let sisters = sister.mom?.sisters, let momName = human.mom?.name else {continue}
        for sister in 0 ..< sisters.count {
            if sisters[sister].name == momName {
                cousins += 1
            }
        }
    }
    return cousins
}
    
print("У \(humanMisha.name) \(cousinsCount(human: humanMisha)) двоюродных братьев и систер")

let manAndrew = Man(name: "A")
let manBoris = Man(name: "B")
let manChang = Man(name: "C")
let womenAngela = Woman(name: "A")
let womenBarbara = Woman(name: "B")
let womenChristina = Woman(name: "C")

var taskTwoHumans = [manAndrew, manBoris, manChang, womenAngela, womenBarbara, womenChristina]
var manCount = 0
var womanCount = 0
for human in taskTwoHumans {
    if let man = human as? Man {
        man.move()
        manCount += 1
    }
    if let women = human as? Woman {
        women.move()
        womanCount += 1
    }
}

print("В представленном массиве мужчин - \(manCount), женщин - \(womanCount)")

func humanPetInfo(humans: [Human]) ->String {
    var dogPerson = 0
    var catPerson = 0
    var cawPerson = 0
    var humanNoPet = 0
    
    for petLover in humans {
        switch petLover.pet {
            case .dog:
                dogPerson += 1
                print(petLover.pet.rawValue)
            case .cat:
                catPerson += 1
                print(petLover.pet.rawValue)
            case .caw:
                cawPerson += 1
                print(petLover.pet.rawValue)
            default:
                humanNoPet += 1
        }
    }
    return "В нашей социальной сети: собачничков: \(dogPerson), кошатников: \(catPerson), любителей коров: \(cawPerson)"
}

print(humanPetInfo(humans: socialNetwork))
