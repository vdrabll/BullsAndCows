//
//  Player.swift
//  exersize
//
//  Created by Виктория Федосова on 19.10.2022.
//

import Foundation

struct HumanPlayer: Player {
    var name: String
    var role: Role
    
    init(name: String, role: Role) {
        self.role = role
        self.name = name
    }
    
}
