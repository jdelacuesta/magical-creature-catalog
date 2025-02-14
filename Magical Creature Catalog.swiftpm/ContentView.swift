import SwiftUI

//Part 1: Creating Structs

struct Creature {
    let name: String
    let description: String
    let isGood: Bool
    let magicPower: Int
    
    //Creature Structures
    
    let Unicorn = Creature(
        name: "Unicorn"
        description: "An animal mentioned in the Bible that's' usually considered an aurochs."
        isGood: true 
        magicPower: 84
    )
    
    let Dragon = Creature(
        name: "Dragon"
        description: "A mythical monster resembling a giant reptile, sometimes shown as having wings."
        isGood: true
        magicPower: 100
    )
    
    let Phoenix = Creature(
        name: "Phoenix"
        description: "A unique bird that lived for five or six centuries in the Arabian desert."
        isGood: true
        magicPower: 90
    )
    
}
    
//Part 2: Fibonacci Creature Abilities 
    
    func fibonacciAbility(n: Int) -> Int {
        guard n > 1 else { return n }
        var a = 0, b = 1
        for _ in 2...n {
            let temp = a + b
            a = b
            b = temp
        }
        return b
    }
    
    //Property for ability in Fibonacci Sequence
    
    var ability: String  {  
        let abilityPower = fibonacciAbility(n: magicPower)
        return "\(name) has a magical ability level of \(abilityPower)!"
    
//Part 3: The Mythical Creature
    
    let creatureCatalog = [Unicorn, Dragon, Phoenix]
    
    func describeCreatures(_ creatures: [Creature]) {
        for creature in creatures {
            print("\nName: \(creature.name)")
            print("Description: \(creature.description)")
            print("Good or Evil: \(creature.isGood ? "Good" : "Evil")")
            print("Magic Power: \(creature.magicPower)")
            print("Ability: \(creature.ability)")
        }
    }
    describeCreatures(creatureCatalog)
    
//Part 4: Mythical Creature Interactions
    
    //Creature Interaction Functionality 
    func interactWith(_ other: Creature) {
        switch (isGood, other.isGood) {
        case (true, true):
            print("\(name) and \(other.name) team up to spread peace and harmony!")
        case (false, false):
            print("\(name) and \(other.name) join forces in a dark alliance!")
        case (true, false):
            print("\(name) tries to purify the evil presence of \(other.name)!")
        case (false, true):
            print("\(name) attempts to corrupt the good heart of \(other.name)!")
            
        }
    }
