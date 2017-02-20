import DominoKit

let sixEight = Domino(suitOne: .six, suitTwo: .eight)
print(sixEight) // "[06|08]"
print(sixEight.suitOne) // "06"
print(sixEight.suitTwo) // "08"
print(sixEight.isDouble) // false
print(sixEight.isSingle) // true
print(sixEight.rank) // 14

let doubleSix = Domino(doubleSuit: .six)
print(sixEight.hasMatchingSuit(.six)) // true

let oneFive: Domino = "[01|05]"
print(oneFive.rank) // 6

let doubleNineSet = DominoSet.standardSet(.nine)
doubleNineSet.shuffle()
if let randomDomino = doubleNineSet.deal() {
    print(randomDomino) // domino between "[00|00]" and "[09|09]"
}
