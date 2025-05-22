//
//  CustomCornerRadius.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//

import SwiftUI
import Foundation

struct TopRoundedShape: Shape {
    var radius: CGFloat = 25.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let topLeft = CGSize(width: radius, height: radius)
        let topRight = CGSize(width: radius, height: radius)
        let bottomLeft = CGSize(width: 0, height: 0)
        let bottomRight = CGSize(width: 0, height: 0)

        path.addRoundedRect(
            in: rect,
            topLeftRadius: topLeft,
            topRightRadius: topRight,
            bottomLeftRadius: bottomLeft,
            bottomRightRadius: bottomRight
        )

        return path
    }
}

extension Path {
    mutating func addRoundedRect(in rect: CGRect, topLeftRadius: CGSize, topRightRadius: CGSize, bottomLeftRadius: CGSize, bottomRightRadius: CGSize) {
        self.move(to: CGPoint(x: rect.minX + topLeftRadius.width, y: rect.minY))

        // Top line
        self.addLine(to: CGPoint(x: rect.maxX - topRightRadius.width, y: rect.minY))
        self.addArc(center: CGPoint(x: rect.maxX - topRightRadius.width, y: rect.minY + topRightRadius.height),
                    radius: topRightRadius.width,
                    startAngle: .degrees(-90),
                    endAngle: .degrees(0),
                    clockwise: false)

        // Right line
        self.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - bottomRightRadius.height))
        self.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))

        // Bottom line
        self.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))

        // Left line
        self.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - bottomLeftRadius.height))
        self.addLine(to: CGPoint(x: rect.minX, y: rect.minY + topLeftRadius.height))
        self.addArc(center: CGPoint(x: rect.minX + topLeftRadius.width, y: rect.minY + topLeftRadius.height),
                    radius: topLeftRadius.width,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false)
    }
}
