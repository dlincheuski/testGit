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
    
    enum Pets: String {
        case dog = "Dog"
        case cat = "Cat"
        case caw = "Caw"
    }
    
    func pet(pet: Pets) -> (String){
            switch pet {
            case .dog:
                return Pets.dog.rawValue
            case .cat:
                return Pets.cat.rawValue
            case .caw:
                return Pets.caw.rawValue

            }
    }
    
    init(name: String, dad: Human? = nil, mom: Human? = nil, brothers: [Human] = [], sisters: [Human] = []) {
        self.name = name
        self.dad = dad
        self.mom = mom
        self.brothers = brothers
        self.sisters = sisters
    }
}

class Man: Human {
    func moveForMan() {
        print("I go move sofa")
    }
}
class Woman: Human {
    func moveForWoman() {
        print("I go to cook dinner")
    }
}

let humanMisha = Human(name: "Misha")
humanMisha.dad = humanKolya
humanMisha.mom = humanLiza
humanMisha.brothers = [humanSasha]
humanMisha.sisters = [humanMasha]
humanMisha.pet(pet: .cat)

let humanMasha = Human(name: "Masha")
humanMasha.dad = humanKolya
humanMasha.mom = humanLiza
humanMasha.brothers = [humanMisha, humanSasha]

let humanSasha = Human(name: "Sasha")
humanSasha.dad = humanKolya
humanSasha.mom = humanLiza
humanSasha.brothers = [humanMisha]
humanSasha.sisters = [humanMasha]
humanSasha.pet(pet: .dog)

let humanKolya = Human(name: "Kolya")
humanKolya.dad = humanDima
humanKolya.mom = humanVera
humanKolya.brothers = [humanVova]

let humanLiza = Human(name: "Liza")
humanLiza.dad = humanOleg
humanLiza.mom = humanMira
humanLiza.sisters = [humanLena]
humanSasha.pet(pet: .caw)

let humanDima = Human(name: "Dima")

let humanVera = Human(name: "Vera")
humanSasha.pet(pet: .dog)

let humanVova = Human(name: "Vova")
humanVova.dad = humanDima
humanVova.mom = humanVera
humanVova.brothers = [humanKolya]

let humanPetr = Human(name: "Petr")
humanPetr.dad = humanVova
humanPetr.brothers = [humanSlava]
humanSasha.pet(pet: .cat)

let humanSlava = Human(name: "Slava")
humanSlava.dad = humanVova
humanSlava.brothers = [humanPetr]

let humanLena = Human(name: "Lena")
humanLena.dad = humanOleg
humanLena.mom = humanMira
humanLena.sisters = [humanLiza]
humanSasha.pet(pet: .caw)

let humanOleg = Human(name: "Oleg")

let humanMira = Human(name: "Mira")
humanSasha.pet(pet: .dog)

let humanMila = Human(name: "Mila")
humanMila.mom = humanLena
humanMila.sisters = [humanValya]

let humanValya = Human(name: "Valya")
humanValya.mom = humanLena
humanValya.sisters = [humanMila]
humanSasha.pet(pet: .dog)

var socialNetwork = [humanMisha, humanMasha, humanSasha, humanKolya, humanLiza, humanDima, humanVera, humanVova, humanPetr, humanSlava, humanLena, humanOleg, humanMira, humanMila, humanValya]
var cousins = 0

print(humanKolya.name) // обращаюсь к имени напрямую
print((humanSlava.dad?.brothers[0].name)!)// обращаюсь к имени через брата
print(humanMisha.dad?.name) //обращаюсь к имени через сына WARNING
print(humanDima.name) // обращаюсь к отца
print(humanKolya.dad?.name) //обращаюсь от имени к отцу WARNING
print((humanPetr.dad?.dad?.name)!) // обращаюсь к отцу через брата
print(humanMisha.dad?.dad?.name) // WARNING
print(humanMisha.brothers[0].name) // crash
//print(humanMisha.sisters[0].name) // crash
//print(humanPetr.brothers[0].name) // crash
print(humanVova.brothers[0].name) // work

func cousinsCount(human: Human) -> (Int) {
    for person in socialNetwork {
        if let brothers = person.dad?.brothers {
            if !brothers.isEmpty {
//                print(human.dad?.name)
//                print(person.dad?.name)
//                print(brothers[0].name)
//                print(human.mom)
            if let dadName = human.dad?.name {
                
                    for value in 0 ..< brothers.count {
                        if brothers[value].name == dadName {
                            cousins += 1
                        }
                    }
            }
            }
        }
    }
    return cousins
}
    
print(cousinsCount(human: humanMisha))
/*if let humanName = humanMisha.dad?.brothers {
    print(humanName[0].name)
}*/
let humanA = Man(name: "A")
let humanB = Man(name: "B")
let humanC = Man(name: "C")
let humanAA = Woman(name: "A")
let humanBB = Woman(name: "B")
let humanCC = Woman(name: "C")

var taskTwoHumans = [humanA,  humanAA, humanB,  humanBB, humanC, humanCC]
for human in taskTwoHumans {
    if let value = human as? Man {
        value.moveForMan()
    }
    if let value = human as? Woman {
        value.moveForWoman()
    }
}

/*for pets in socialNetwork {
    var cats = []
    var dogs = []
    var caws = []
    if
    }
}*/
