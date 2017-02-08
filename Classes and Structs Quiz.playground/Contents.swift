//: Playground - noun: a place where people can play

import UIKit

/// Question 1.

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

/// Answer: 2 of the lines work but the last one does not work because the property "homePlanet" is defined as a let constant


/// Question 2.

/// Answer: Yes. Changed "homePlanet" to a "var" which allows the property to be mutated.

///Question 3.

struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

/// Answer: No the lines above would not work because if an instance of a struct is defined as a let constant, it cannot be 
/// mutated

/// Question 4.

/// Answer: Yes. Changed the instance of bilbo to a "var" which allows the properties to be mutated afterwards

/// Question 5.

/// Consider this bit of code that uses the Giant class:

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

/// What will the value of edgar.name be after those three lines of code are run? What will the value of jason.name be? Why?

/// Answer: both jason.name and edgar.name will have a value of "Jason" because Giant is a class. Classes
/// are reference types. Any new instances that are created reference the original instance. Therefore
/// when a change is made, it also changes the "root" value

/// Question 6.

/// Given this bit of code that uses the Alien struct:

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"


/// What will the value of charles.homePlanet be after the above code run? What about the value of charlesFromJupiter.homePlanet? Why?

/// Answer: The value of charles.homePlanet will be "Pluto" because Alien is a struct therefore a value type
/// Value types create copies when instantiated and do not reference the parent. charlesFromJupiter.homePlanet
/// will have a value of Jupiter.

/// Question 7

/// Here's a struct that represents a bank account:

struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

/// Does this code work? Why or why not?

/// Answer: No it does not work because both functions are defined as "mutating". In order to change struct 
/// properties, you have to define the functions as "mutating"

/// Question 8

/// Can you fix the BankAccount struct so it does work?

/// Answer: Done


/// Question 9

/// Given this bit of code (which incorporates any fixes you made in Question 8):

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

/// What will the value of joeAccount.balance be after the above code runs? What about the value of joeOtherAccount.balance? Why?

/// Answer: The value of joeAccount.balance will be 50.0. The value of joeOtherAccount.balance will be 100.0 
/// because when joeAccount was assigned to joeOtherAccount it made a copy of the current value at that time
/// before joeAccount was mutated.

/// Question 10

/// Here's a class that can track songs in a music library:

class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

/// Given this bit of code that uses MusicLibrary:

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

/// After this code runs, what are the contents of library1.tracks? What about the contents of library2.tracks? Why?


/// Answer: The contents of library1.tracks are ["Michelle", "Voodoo Child", "Come As You Are"] The contents of
/// library2.tracks are ["Michelle", "Voodoo Child", "Come As You Are"]. They are the same because when library2 was 
/// instantiated, it referenced library 1, therefore any changes made to library 2, would also be reflected in library 1




