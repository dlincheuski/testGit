/*
 Есть семья: папа -> мама -> дети.
 дети могут вызывать друг друга с помощью метода "Дай мне игрушку", метода для мамы "Мама дай конфетку", метода для папы "Папа купи игрушку"
 Все обьекты семьи лежать в общем классе семья. В классе семья есть метода "распечатать семью" который выводит массив со всеми членами семьи
 У папы есть 3 замыкания: 1. Распечатай всю семью 2. Распечатай маму 3. Распечатай всех детей
 При выходе из зоны видимости проконтролировать что все обьекты уничтожены
 */
class Family {
    var dad: Dad?
    var mom: Mom?
    var kids: [Kid]
    
    func printFamily() {
        func printKids() -> String {
            var value = ""
            for kidsMember in self.kids {
                value += kidsMember.name + " "
            }
            return value
        }
        print("\(dad!.name) \(mom!.name) \(printKids())is big interesting family")
    }
    
    init(dad: Dad? = nil, mom: Mom? = nil, kids: [Kid] = [Kid]()) {
        print("Family enter the room")
        self.dad = dad
        self.mom = mom
        self.kids = kids
    }

    deinit {
        print("Family left the room")
    }
}

class Dad {
    var name: String
    
    var mom: Mom?
    var kids: [Kid]
    
    var firstDaddyClosure : (()->())?
    var secondDaddyClosure : (()->())?
    var thirdDaddyClosure : (()->())?
    
    init(name: String, mom: Mom? = nil, kids: [Kid] = [Kid]()) {
        print("Dad enter the room")
        self.name = name
        self.mom = mom
        self.kids = kids
    }
    
    deinit {
        print("Dad left the room")
    }
}

class Mom {
    var name: String
    var dad: Dad?
    var kids: [Kid]
    
    init(name: String, dad: Dad? = nil, kids: [Kid] = [Kid]()) {
        print("Mom enter the room")
        self.name = name
        self.dad = dad
        self.kids = kids
    }
    
    deinit {
        print("Mom left the room")
    }
}

class Kid {
    var name: String
    
    func childVsChildCommunication(with: Kid) {
        print("\(with.name), give me this toy, please")
    }
    
    func childVsMomCommunication(with: Mom) {
        print("Mommy \(with.name), give me the candy, please")
    }
    
    func childVsDadCommunication(with: Dad) {
        print("Daddy \(with.name), give me the car, please")
    }
    
    init(name: String) {
        print("Kid enter the room")
        self.name = name
    }
    
    deinit {
        print("Kid left the room")
    }
}

var areaOfVisibility = true
if areaOfVisibility {
    print("Start area of visibility")
    let dad = Dad(name: "Misha")
    let mom = Mom(name: "Mila")
    let kid1 = Kid(name: "Liza")
    let kid2 = Kid(name: "Poul")
    let family = Family(dad: dad, mom: mom, kids: [kid1, kid2])
    family.printFamily()
    kid1.childVsChildCommunication(with: kid2)
    kid2.childVsChildCommunication(with: kid1)
    kid2.childVsMomCommunication(with: mom)
    kid1.childVsDadCommunication(with: dad)
    dad.firstDaddyClosure = {
        [weak mom, weak kid1, weak kid2, weak dad] in
        print("\(mom?.name) \(kid1?.name) \(kid2?.name) and \(dad?.name) - its all our family")
    }
    dad.firstDaddyClosure!()
    dad.secondDaddyClosure = {
        [weak mom] in
        print("\(mom?.name) is our most beautiful Mom in the World")
    }
    dad.secondDaddyClosure!()
    dad.thirdDaddyClosure = {
        [weak kid1, weak kid2] in
        print("Its my son \(kid2?.name) and doughter \(kid1?.name)")
    }
    dad.thirdDaddyClosure!()
    print("End area of Visibility")
}
