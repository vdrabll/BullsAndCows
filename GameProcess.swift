//
//  GameProcess.swift
//  exersize
//
//  Created by Виктория Федосова on 19.10.2022.
//

import Foundation

class GameProcess {
    
    func сhooseRole() -> Role {
        print("""
         Введите номер вашей роли:
        1) Загадывать
        2) Отгадывать
        
        """)
        var value = readLine()
        if let number = value {
            print("Вы выбрали свою роль!")
        } else {
            print("Такой роли не существует :(")
            return self.сhooseRole()
        }
        let role = Int(value!)!
        if role < 1 || role > 2 {
            print("Такой роли не существует ")
        }
        
        let choosedRole = Role(number: role)
        if choosedRole == Role.Unknown {
            return self.сhooseRole()
        } else {
            return choosedRole
        }
    }
    
    func chooseLevel() -> DifficultyLevel {
    
        print("""
                  🤖: Выбери номер уровня сложности:
                  1. Легкий (числа от 0 до 10)
                  2. Средний (числа от 0 до 100)
                  3. Сложный (числа от 0 до 1000) \n
              """)
        
        // подправить
        var value = readLine()
        if let number = value {
            print("Вы выбрали уровень сложности под номером \(number)!")
        } else {
            print("Вы ввели несуществующий уровень :(")
            return self.chooseLevel()
        }
        let level = Int(value!)!
        if level < 1 || level > 3 {
            print("Вы ввели несуществующий уровень")
        }
        return DifficultyLevel(number: level)
    }
   
    func startGame() -> Void  {
        var imagineNumber: Int
        let role = self.сhooseRole()
        let level = self.chooseLevel()
        if role == Role.Riddler {
            print("Игрок введите ваше число в диапозоне  \(level.gap): ") // придумай так, что бы число исчезло или вводило незаметно
             imagineNumber = Int(readLine()!)!
            print("Теперь попробуйте угадать это число :)")
            
        } else {
            imagineNumber = Int.random(in: level.gap )
        }
        chekingNumber(level: level, imagineNumber: imagineNumber)
    }
        
        func chekingNumber(level: DifficultyLevel,imagineNumber: Int ) {
            for chance in level.chance {
                let testNumber = Int(readLine()!)!
                let bulls = countBulls(imagineNumber, testNumber)
                if bulls == String(testNumber).count {
                    print("Победа!")
                    break
                }
                let cows = countCows(imagineNumber, testNumber)
            }
        }

        func countBulls(_ firstNumber: Int, _ secondnumber: Int) -> Int {
        var bulls = 0
        for c in String(firstNumber) {
            for p in String(secondnumber) {
                if c == p {
                    bulls += 1
                }
            }
        }
        print("Вы угадали \(bulls) Быков!")
        return bulls
    }

    func countCows(_ firstNumber: Int, _ secondnumber: Int) -> Int {
        var computerNumberArray: [Int] = String(firstNumber).compactMap {
            $0.wholeNumberValue
        }
        var playerNumberArray: [Int] = String(secondnumber).compactMap { symbol in
            symbol.wholeNumberValue
        }
        var cows = 0
        for i in computerNumberArray {
            if playerNumberArray.contains(i) {
                cows += 1
            }
        }
        print("Вы угадали одинаковое число \(cows)")
        return cows
    }
    }






