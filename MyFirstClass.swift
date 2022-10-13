//
//  MyFirstClass.swift
//  exersize
//
//  Created by Виктория Федосова on 15.09.2022.
//

import Foundation


// TODO:
// 1) задать три уровная сложности
// 2) выбрать роль
// 3) игровой режим

func cowsAndNumbers() {
    chooseLevel()
    сhooseRole()
}
func convertStringToInt(string: String) -> Int {
    var result: Int = 0
    if let input = readLine() {
        if let answer = Int(input) {
            result = answer
        }
    }
    return result
}

func chooseLevel() -> (ClosedRange<Int>,ClosedRange<Int>) {
    var answer = String()
    print("""
              🤖: Выбери номер уровня сложности:
              1. Легкий (числа от 0 до 10)
              2. Средний (числа от 0 до 100)
              3. Сложный (числа от 0 до 1000) \n
          """)
    var levelNumber = convertStringToInt(string: answer)
    var returnedRanges: ((ClosedRange<Int>,ClosedRange<Int>))
    
    switch levelNumber {
        case  1:  return (0...10, 1...3)
        case  2:  return (0...100, 1...6)
        case  3:  return (0...1000, 1...8)
        default:  return (0...4, 4...4)
    }
    
}

func сhooseRole() -> Int {
    var role = String()
    print("Выбери роль: ")
    print("1. Игрок")
    print("2. Ведущий")
    var number = convertStringToInt(string: role)
    
    switch number {
        case  1:
        return Int(number)
        case  2:
        return Int(number)
        default:
        "Вы выбрали несуществующую роль"
    }
    return Int(number)
}

func gameProcess(level: Int, role: Int) -> Void  {
    var userNumber = Int()
    var computerNumber = Int()
    
    
    switch role {
    case 1:
        // компьютер загадывает, я разгадываю
        let range = chooseLevel().0
        let computerNumber = Int.random(in: chooseLevel().0)
        
        print(" 🤖 Я загадал число от \(range), хаха, попробуй угадай глупый человек")
        var answer = readLine()!
        
        for i in chooseLevel().1 {
            lookIfNumberBool(computerNumber: computerNumber, playerNumber: userNumber )
            lookIfNuberCow(computerNumber: computerNumber, playerNumber: userNumber)
        }
            
    case 2:
        
        let range = chooseLevel().0
        print(" 🤖 Введи число от \(range), я точно его угадаю!")
        
        for i in chooseLevel().1 {
            lookIfNumberBool(computerNumber: computerNumber, playerNumber: userNumber )
            lookIfNuberCow(computerNumber: computerNumber, playerNumber: userNumber)
        }
        
    default:
        "efefef"
    }
}


func lookIfNumberBool(computerNumber: Int, playerNumber: Int) -> Int {
    var bulls = 0
    for c in String(computerNumber) {
        for p in String(playerNumber) {
            if c == p {
                print("Вы угадали одинаковое число \(c) по индексу \( String(computerNumber).index(of: c))")
                bulls += 1
            }
        }
    }
    return bulls
}

func lookIfNuberCow(computerNumber: Int, playerNumber: Int) -> Int {
    var computerNumberArray: [Int] = String(computerNumber).compactMap {
        $0.wholeNumberValue
    }
    var playerNumberArray: [Int] = String(playerNumber).compactMap { symbol in
        symbol.wholeNumberValue
    }
    var cows = 0
    for i in computerNumberArray {
        if playerNumberArray.contains(i) {
            cows += 1
        }
    }
    
    return cows
}

 cowsAndNumbers()
