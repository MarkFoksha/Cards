//
//  CardViewFactory.swift
//  Cards
//
//  Created by Марк Фокша on 17.09.2022.
//

import UIKit

class CardViewFactory {
    func get(_ shape: CardType, withSize size: CGSize, andColor color: CardColor) -> UIView {
        let frame = CGRect(origin: .zero, size: size)
        let viewColor = getViewColorBy(modelColor: color)
        
        switch shape {
        case .square:
            return CardView<SquareShape>(frame: frame, color: viewColor)
        case .circle:
            return CardView<CircleShapeLayer>(frame: frame, color: viewColor)
        case .cross:
            return CardView<CrossShape>(frame: frame, color: viewColor)
        case .fill:
            return CardView<FillShape>(frame: frame, color: viewColor)
        }
    }
    
    private func getViewColorBy(modelColor: CardColor) -> UIColor {
        switch modelColor {
        case .red:
            return .red
        case .green:
            return .green
        case .black:
            return .black
        case .gray:
            return .gray
        case .brown:
            return .brown
        case .yellow:
            return .yellow
        case .purple:
            return .purple
        case .orange:
            return .orange
        }
    }
}
