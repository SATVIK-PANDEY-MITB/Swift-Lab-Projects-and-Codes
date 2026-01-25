/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */

enum Suit {
    case clubs, spades, diamonds, hearts
}


/*:
 Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
 */

var cardInHand = Suit.hearts
print(cardInHand)


/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */



cardInHand = .spades

/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */




func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("A new opportunity will come your way.")
    case .spades:
        print("Challenges will soon be overcome.")
    case .diamonds:
        print("Wealth and success are near.")
    case .hearts:
        print("You will soon find what you seek.")
    }
}

getFortune(cardSuit: .clubs)
getFortune(cardSuit: .hearts)
getFortune(cardSuit: .diamonds)

/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */

struct Card {
    var suit: Suit
    var value: Int
}



/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */

let card1 = Card(suit: .hearts, value: 1)  
let card2 = Card(suit: .spades, value: 12)

func valueToString(_ value: Int) -> String {
    switch value {
    case 1: return "Ace"
    case 2: return "Two"
    case 3: return "Three"
    case 4: return "Four"
    case 5: return "Five"
    case 6: return "Six"
    case 7: return "Seven"
    case 8: return "Eight"
    case 9: return "Nine"
    case 10: return "Ten"
    case 11: return "Jack"
    case 12: return "Queen"
    case 13: return "King"
    default: return "Unknown"
    }
}

func suitToString(_ suit: Suit) -> String {
    switch suit {
    case .clubs: return "Clubs"
    case .spades: return "Spades"
    case .diamonds: return "Diamonds"
    case .hearts: return "Hearts"
    }
}

print("Card 1 is the \(valueToString(card1.value)) of \(suitToString(card1.suit))")
print("Card 2 is the \(valueToString(card2.value)) of \(suitToString(card2.suit))")

//: page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
