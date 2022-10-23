//
//  CalculatingExercises.swift
//  exersize
//
//  Created by Виктория Федосова on 18.10.2022.
//

import Foundation

class CalculatingExercises {
    
    static func getUserHait() {
        print("Введите ваш рост в дюймах: ")
        
        if let input = readLine() {
            if let hait = Double(input) {
               print("Ваш рост в дюймах: \(hait), ваш рост в сантиметрах \(hait * 2.54)")
            }
        }
    }
    
    static func getUserAgeinSeconds() {
        print("Введите ваш возраст(лет): ")
        
        if let input = readLine() {
            if let year = Double(input) {
                print("Вы прожили : \(year * 3.156 * pow(10, 7)) секунд :D ")
            }
        }
    }

    static func findMyFactorial(number: UInt64) -> UInt {
        var result: UInt64 = 1
        var zeroInResult: UInt64 = 0
        
        for i in 1...number {
            result &*= UInt64(i)
        }
        
            for i in String(result) {
                if i == "0" {
                    zeroInResult += 1
                }
            }
        
        print(result)
        print(zeroInResult)
        return UInt(zeroInResult)
    }
}


