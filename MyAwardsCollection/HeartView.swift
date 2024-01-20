//
//  HeartView.swift
//  MyAwardsCollection
//
//  Created by Денис Гиндулин on 19.01.2024.
//

import SwiftUI

struct HeartView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farLine = size * 0.9
            let nearLine = size - farLine
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine * 3))
                path.addQuadCurve(
                    to: CGPoint(x: farLine * 1.03, y: middle),
                    control: CGPoint(x: size, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle - nearLine * 3, y: farLine),
                    control: CGPoint(x: size / 1.5, y: size * 1.5)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine * 3),
                    control: CGPoint(x: -middle / 1.5, y: -nearLine / 1.5)
                )
            }
            .fill(
                RadialGradient(
                    colors: [.pink, .white, .pink, .pink, .white, .white, .pink, .white, .pink, .white, .pink, .white, .pink, .white, .pink, .pink, .white],
                    center: .bottomTrailing,
                    startRadius: size * 0.013,
                    endRadius: size * 1.53
                )
            )
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
            .frame(width: 250, height: 250)
    }
}
