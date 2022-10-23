//
//  ComputerPlayer.swift
//  exersize
//
//  Created by Виктория Федосова on 23.10.2022.
//

import Foundation

struct CompuerPlayer: Player {
    
    var name: String
    var role: Role
    
    init() {
        self.name = "Компуктер"
        self.role = Role.Riddler
    }
    
}
