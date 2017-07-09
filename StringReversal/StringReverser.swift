//
//  StringReverser.swift
//  StringReversal
//
//  Created by Michelline Tran on 7/7/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import Foundation


// Given a string with special characters and alphabetical characters, reverse the string while keeping the special characters in place

// Special Chanracters: $ % & @ ,

/*
Example: Before: a,b$c
         After: c,b$a
*/

struct Reverser {
    var input = ""

    func reverse() -> String {
        var reversedArray = Array<Character>()
        var reversedString = ""

        let inputCharacterSet = CharacterSet(charactersIn: input)
        let allSpecialCharacterSet = CharacterSet.alphanumerics.inverted

        //if no special characters exist:
        if inputCharacterSet.isDisjoint(with: allSpecialCharacterSet){
            reversedString = String(input.characters.reversed())

        //else special characters exist...
        } else {

            let inputArray =  Array(input.characters)
            let inputArrayReversed = Array(inputArray.reversed())

            for (index, character) in inputArray.enumerated() {
                //if character is not a special character
                if String(character).rangeOfCharacter(from: allSpecialCharacterSet) == nil {
                    reversedArray.append(inputArrayReversed[index])

                //else character is special
                } else {
                    reversedArray.append(character)

                }
            }

            reversedString = String(reversedArray)
        }

        return reversedString
    }
}
