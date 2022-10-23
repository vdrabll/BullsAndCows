//
//  DifficultyLevel.swift
//  exersize
//
//  Created by Виктория Федосова on 23.10.2022.
//

import Foundation

enum DifficultyLevel: Int {
    case low = 1
    case middle = 2
    case hard = 3
    
    init(number : Int) {
        switch number  {
        case 1:
            self = .low
        case 2:
            self = .middle
        case 3:
            self = .hard
        default:
            self = .low
        }
    }
    
    var gap: ClosedRange<Int> {
        switch self {
        case .low:
            return (Gap.START_INDEX...Gap.LOW_LEVEL_END_INDEX)
        case .middle:
            return (Gap.START_INDEX...Gap.MIDDLE_LEVEL_END_INDEX)
        case .hard:
            return (Gap.START_INDEX...Gap.HARD_LEVEL_END_INDEX)
        }
    }
    
    var chance: ClosedRange<Int> {
        switch self {
        case .low:
            return (Chance.START_INDEX...Chance.LOW_LEVEL_END_INDEX)
        case .middle:
            return (Chance.START_INDEX...Chance.MIDDLE_LEVEL_END_INDEX)
        case .hard:
            return (Chance.START_INDEX...Chance.HARD_LEVEL_END_INDEX)
        }
    }
}
