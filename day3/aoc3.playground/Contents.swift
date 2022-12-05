import Cocoa

let inputFileUrl = #fileLiteral(resourceName: "input.txt")
let testInputFileUrl = #fileLiteral(resourceName: "testinput.txt")

var testInput = try String(contentsOf: testInputFileUrl)
var input = try String(contentsOf: inputFileUrl)


struct Rucksack {
    var items: String
    var firstCompartment: [Character] = []
    var secondCompartment: [Character] = []
    var sharedItem: [Character] = []
    var priorityOfSharedItem: Int = 0
    
    // De items in de rugzak over de 2 verschillende compartimenten verdelen
    mutating func placeItemsInCompartments() {
        let itemsInRucksack = Array(self.items)
        self.firstCompartment = Array(itemsInRucksack[0 ..< itemsInRucksack.count/2])
        self.secondCompartment = Array(itemsInRucksack[itemsInRucksack.count/2 ..< itemsInRucksack.count])
    }
    
    // Zoek het item dat in beide compartimenten van deze rugzak aanwezig is
    mutating func findSharedItemInCompartments() {
        var sharedItem: [Character] = []
        // als item in compartiment1 ook aanwezig is in compartiment2, voeg het dan toe aan gedeelde waarde. loop over alle waardes van compartiment1
        for itemInFirstCompartment in self.firstCompartment {
            for itemInSecondCompartment in self.secondCompartment {
                if itemInFirstCompartment == itemInSecondCompartment {
                    sharedItem.append(itemInFirstCompartment)
                }
            }
        }
        self.sharedItem = sharedItem
    }
    
    // Bereken de letterwaarde van het sharedItem
    mutating func calculatePriorityOfSharedItem() {
        // maak onderscheid tussen kleine letter en hoofdletter
        if sharedItem[0].isLowercase {
            // letterwaarde = ascii waarde - ascii waarde van a + 1
            self.priorityOfSharedItem = Int(sharedItem[0].asciiValue! - Character("a").asciiValue! + 1)
        } else {
            // letterwaarde = 26 + ascii waarde - ascii waarde van a
            self.priorityOfSharedItem = Int(Character(sharedItem[0].lowercased()).asciiValue! - Character("a").asciiValue! + 27)
        }
    }

}

struct GroupOfElves {
    var groupSize : Int = 1
    var badge: [Character] = []
    var badgePriority: Int = 0
    var allItemsOfGroup: [String] = []
    var itemsOfAllElves: [[Character]] = []
    
    // Zoek het item dat in elke rugzak van deze groep aanwezig is en sla hem op als badge van deze groep
    mutating func findBadge() {
        // Maak van de itemstring een array die alle afzonderlijke letters als waardes bevat en sla diezelfde array op als 1 waarde in een array. loop over alle itemstrings.
        for itemsOfAnElve in self.allItemsOfGroup {
            itemsOfAllElves.append(Array(itemsOfAnElve))
        }
        // betere oplossing dan in rucksack i guess. derde for loop te moeilijk, zou beter rucksack aanpassen
        self.badge.append(contentsOf: itemsOfAllElves[0].filter(itemsOfAllElves[1].filter(itemsOfAllElves[2].contains).contains))
    }
    
    // Bereken de letterwaarde van de badge (kopie van calculatePriorityOfSharedItem())
    mutating func calculatePriorityOfBadge() {
        if badge[0].isLowercase {
            self.badgePriority = Int(badge[0].asciiValue! - Character("a").asciiValue! + 1)
        } else {
            self.badgePriority = Int(Character(badge[0].lowercased()).asciiValue! - Character("a").asciiValue! + 27)
        }
    }
}


// Part 1
var sharedItems: [Character] = []
var priorityOfSharedItems: [Int] = []
// Splits input in lijnen en zet elke lijn als aparte waarde in een array
var rucksackContents = input.components(separatedBy: "\n")

// Maak een rugzak van elke lijn en bewaar de lijn als items in de rugzak
for rucksackContent in rucksackContents {
    var rucksack = Rucksack(items: rucksackContent)
    rucksack.placeItemsInCompartments()
    rucksack.findSharedItemInCompartments()
    // sla van elke rugzak het sharedItem op in een array van sharedItems
    sharedItems.append(rucksack.sharedItem[0])
    rucksack.calculatePriorityOfSharedItem()
    // sla  elke letterwaarde van elk shareditem in een array van letterwaardes
    priorityOfSharedItems.append(rucksack.priorityOfSharedItem)
}
// tel alle letterwaardes uit sharedITems op
let sumOfPriorities = priorityOfSharedItems.reduce(0, +)

// Part 2 en die arrays met shareditems zijn useless, zou beter aanpassen naar unieke values
var allGroups: [GroupOfElves] = []
var groupOfElves = GroupOfElves()

// ok dus maak groepen van 3 elfjes en sla hun ittems op in allItemsOfGroup
for rucksackContent in rucksackContents {
    groupOfElves.allItemsOfGroup.append(rucksackContent)
    if groupOfElves.groupSize == 3 {
        allGroups.append(groupOfElves)
        groupOfElves.groupSize = 1
        groupOfElves.allItemsOfGroup = []
    } else {
        groupOfElves.groupSize += 1
    }
}


var badges: [Character] = []
var priorityOfBadges: [Int] = []

// vraag naar waarom je hier for var group moest typen ipv for group
for var group in allGroups {
    //bereken de badge van de groep en voeg toe aan badges
    group.findBadge()
    badges.append(group.badge[0])
    //bereken de letterwaarde van de badge van de groep en voeg toe aan de rest
    group.calculatePriorityOfBadge()
    priorityOfBadges.append(group.badgePriority)
}

// bereken som van badgeprioriteiten
let sumOfBadgePriorities = priorityOfBadges.reduce(0, +)
