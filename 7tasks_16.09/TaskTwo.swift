/*
 Your task is to add up letters to one letter.

 The function will be given an Array<Character>, each one being a letter to add, and the function will return a Character.

 Notes:
 Letters will always be lowercase.
 Letters can overflow (see second to last example of the description)
 If no letters are given, the function should return 'z'
 */

import Foundation


// MARK: Solution 1

func addLetters(_ letters: [Character]) -> Character {
    guard !letters.isEmpty else {
        let z: Character = "z"
        return z
    }
    let dictEn: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

    let sum = letters.reduce(0) { partialResult, char in
        partialResult + dictEn.firstIndex(of: char)! + 1
    }
    
    if sum % dictEn.count > 0 {
        return dictEn[sum % dictEn.count - 1]
    } else {
        return dictEn[sum - 1]
    }
}

