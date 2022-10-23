//
//  CalculatingWeapons.swift
//  exersize
//
//  Created by Виктория Федосова on 18.10.2022.
//

import Foundation

class CalculatingWeapons {

    func caclutatePriceofWapon() {
        let roketPrice: Decimal = 10000
        let teslaModelSPrice: Decimal = 30000
        let buget: Decimal = 5000000
        
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
}
