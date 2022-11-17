//
//  Model-Card.swift
//  Cards
//
//  Created by Марк Фокша on 16.09.2022.
//

import Foundation

enum CardType: CaseIterable {
    case circle
    case cross
    case square
    case fill
}

enum CardColor: CaseIterable {
    case red
    case green
    case black
    case gray
    case brown
    case yellow
    case purple
    case orange
}

typealias Card = (type: CardType, color: CardColor)
