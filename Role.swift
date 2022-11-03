//
//  Role.swift
//  exersize
//
//  Created by Виктория Федосова on 23.10.2022.
//

import Foundation

enum Role: Int {
    case Riddler = 1
    case Guesser = 2
    case Unknown = 0
    
   init (number: Int) {
        switch number {
        case 1:
            self = Role.Riddler
        case 2:
            self = Role.Guesser
        default:
            self = Role.Unknown
        }
    }
}
