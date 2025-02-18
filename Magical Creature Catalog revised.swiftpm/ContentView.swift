import SwiftUI

// Part 1: Creating Structs
struct Creature {
    let name: String
    let description: String
    let isGood: Bool
    let magicPower: Int
    
    // Function to calculate ability power using the Fibonacci sequence
    func fibonacciAbility(n: Int) -> Int {
        if n <= 0 { return 0 }
        if n == 1 { return 1 }
        
        var a = 0, b = 1
        for _ in 2...n {
            let temp = a + b
            a = b
            b = temp
        }
        return b
    }
    
    // Computed property for ability level
    var ability: String {
        let abilityPower = fibonacciAbility(n: magicPower)
        return "\(name) has a magical ability level of \(abilityPower)!"
    }
    
    // Creature Interaction Functionality
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
}

// Move instances outside the struct
let Unicorn = Creature(
    name: "Unicorn",
    description: "A mystical horse with a spiraling horn, symbolizing purity and magic.",
    isGood: true,
    magicPower: 95
)

let Dragon = Creature(
    name: "Dragon",
    description: "A mythical monster resembling a giant reptile, sometimes shown as having wings.",
    isGood: false,
    magicPower: 100
)

let Phoenix = Creature(
    name: "Phoenix",
    description: "A unique bird that lived for five or six centuries in the Arabian desert.",
    isGood: true,
    magicPower: 90
)

// Move creature catalog outside the struct
let creatureCatalog = [Unicorn, Dragon, Phoenix]
