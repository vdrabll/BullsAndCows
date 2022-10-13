//
//  main.swift
//  exersize
//
//  Created by Виктория Федосова on 04.09.2022.
//

import Foundation
//В дюйме имеется 2.54 сантиметра. Напишите программу, которая предлагает ввести рост в дюймах, после чего выводит на экран этот рост в сантиметрах. Либо, если вам так больше нравится, программа может запрашивать рост в сан­ тиметрах и переводить его в дюймы.
func getUserHait() {
    print("Введите ваш рост в дюймах: ")
    
    if let input = readLine() {
        if let hait = Double(input) {
           print("Ваш рост в дюймах: \(hait), ваш рост в сантиметрах \(hait * 2.54)")
        }
    }
}

//getUserHait()

// В году содержится примерно 3.156х10^7 секунд. Напишите программу, которая нредлагает ввести возраст в годах, а затем выводит на экран эквивалентное зна­ чение в секундах

func getUserAgeinSeconds() {
    print("Введите ваш возраст(лет): ")
    
    if let input = readLine() {
        if let year = Double(input) {
            print("Вы прожили : \(year * 3.156 * pow(10, 7)) секунд :D ")
        }
    }
}


//getUserAgeinSeconds()

//Напишите программу, которая принимает на вход число в десятичной системе счисления, а затем построчно выводит это же число в 2ичной, 8миричной и 16ричной системах счисления

//После очередной атаки террористов на Тель-Авив, Мойша решил закупиться новыми ПВО ракетами у США, к сожалению, деньги он никому не доверяет и бухгалтера у него нет, зато, есть Вика и она любит Swift. Ракета стоит 10000 долларов. Мойша хочет сделать заказ на 500 ракет и пару новеньких tesla model S за 30000 долларов каждая. Помогите Мойше посчитать сколько он потратит всего денег, какая будет точная комиссия, если она равна 1.25% на товар, сколько Мойша сможет купить ракет, если он не хочет тратить больше 5000000 шекелей (1 шекель = 0.3 доллара)
let roketPrice: Decimal = 10000
let teslaModelSPrice: Decimal = 30000
let buget: Decimal = 5000000

func caclutatePriceofWapon() {
    let bugetInDollars: Decimal = buget * 0.3
    let rocketPriceWithTax: Decimal = (roketPrice + (roketPrice / 100) * 1.25)
    let teslaPriceWithTax: Decimal = (teslaModelSPrice + (teslaModelSPrice / 100) * 1.25)
    let totalRocketPrice: Decimal = rocketPriceWithTax * 500
    let totalTeslaPrice: Decimal = teslaPriceWithTax * 2
    let credit = totalTeslaPrice + totalRocketPrice
    let rocketBuget = bugetInDollars-totalTeslaPrice
    let totalNumberOfRockets = (rocketBuget / rocketPriceWithTax)
    
    print("""
          С имеющимся бюджетом в \(buget) шекелей, Мойша имеет \(bugetInDollars) долларов.
          Стоимость одной ракеты и tesla model S (с учетом налога) составляет : \(rocketPriceWithTax) и \(teslaPriceWithTax) сооветвенно.
          Общая стоимость 500 ракет и 2 машин tesla model S: \(credit) долларов.
          Если Мойя решится на такую покупку то это от его бюджета останется: \(bugetInDollars - credit)
          С учетом бюджета и отложенных денег на машины, бюджет на ракеты составит: \(rocketBuget) исходя из него и цены на ракеты, Мойша может себе позволить \(totalNumberOfRockets._length) ракеты
          """)
    
}

// Написать функцию, которая считает факториал заданного числа, а после выводит количество нулей в его составе;

func findMyFactorial(number: UInt64) -> UInt {
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

 //findMyFactorial(number: )





// TODO:
// 1) задать три уровная сложности
// 2) выбрать роль
// 3) игровой режим

func cowsAndNumbers() {
    gameProcess(levelAndChance: chooseLevel(), role: сhooseRole())
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
    let lowLevel = (0...10, 1...3)
    let middleLevel = (0...100, 1...6)
    let hardLevel = (0...1000, 1...8)

    
    print("""
              🤖: Выбери номер уровня сложности:
              1. Легкий (числа от 0 до 10)
              2. Средний (числа от 0 до 100)
              3. Сложный (числа от 0 до 1000) \n
          """)
    var levelNumber = convertStringToInt(string: answer)
    
    switch levelNumber {
        case  1:  return lowLevel
        case  2:  return middleLevel
        case  3:  return hardLevel
        default:  return middleLevel
    }
    
}

func сhooseRole() -> Int {
    var role = String()
    print("Введите номер желаемой роли: ")
    print("1. Загадываю")
    print("2. Отгадываю")
    var number = convertStringToInt(string: role)
    
    switch number {
        case  1:
        return Int(number)
        case  2:
        return Int(number)
        default:
        "Вы выбрали несуществующую роль"
    }
    return number
}

func gameProcess(levelAndChance: (ClosedRange<Int>,ClosedRange<Int>), role: Int) -> Void  {
    //var imagineNumber: Int = Int.random(in: levelAndChance.0)
    
    if role == 1 {
        print("Игрок введите ваше число в диапозоне  \(levelAndChance.0): ") // придумай так, что бы число исчезло или вводило незаметно
        var imagineNumber: Int = convertStringToInt(string: readLine()!)
        print("Теперь попробуйте угадать это число :)")
        for chance in levelAndChance.1 {
            let testNumber = convertStringToInt(string: readLine()!)
            let bulls = countBulls(imagineNumber, testNumber)
            if bulls == String(testNumber).count {
                print("Победа!")
                break
            }
           let cows = countCows(imagineNumber, testNumber)
        }
        
    } else if role == 2 {
        let imagineNumber = Int.random(in: levelAndChance.0)
    
        print("Я загадал уникальное число в диапазоне \(levelAndChance.0), попробуйте его угадать!")
        for chance in levelAndChance.1 {
            let testNumber = convertStringToInt(string: readLine()!)
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
cowsAndNumbers()
