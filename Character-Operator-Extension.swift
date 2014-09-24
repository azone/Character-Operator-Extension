//
//  Character-Operator-Extension.swift
//  Character Operator Extension
//
//  Created by Yozone on 14-9-24.
//  Copyright (c) 2014年 Yozone Wang. All rights reserved.
//

import Foundation

func +(lhs: Character, rhs: Int) -> Character {
    let charString = String(lhs)
    let charScalar = charString.unicodeScalars[charString.unicodeScalars.startIndex]

    return Character(UnicodeScalar(charScalar.value + rhs))
}

func -(lhs: Character, rhs: Int) -> Character {
    return lhs + -rhs
}

func +=(inout lhs: Character, rhs: Int) -> Character {
    lhs = lhs + rhs
    
    return lhs
}

func -=(inout lhs: Character, rhs: Int) -> Character {
    lhs = lhs - rhs
    
    return lhs
}

prefix func ++(inout lhs: Character) -> Character {
    lhs += 1
    
    return lhs
}

postfix func ++(inout lhs: Character) -> Character {
    var tmp = lhs
    lhs += 1

    return tmp
}

prefix func --(inout lhs: Character) -> Character {
    lhs -= 1
    
    return lhs
}

postfix func --(inout lhs: Character) -> Character {
    var tmp = lhs
    lhs -= 1
    
    return tmp
}
