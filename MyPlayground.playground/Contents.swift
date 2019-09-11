import UIKit

var wordToGuess = "SWIFT"
var lettersGuessed = "XWES"
var revealWord = ""

//revealWord should now equal " _ W _ _ _ "

for letter in wordToGuess{
    if lettersGuessed.contains(letter){
        revealWord = revealWord + " \(letter)"
    }else{
        revealWord += " _"
    }
}
revealWord.removeFirst()
print(revealWord)
