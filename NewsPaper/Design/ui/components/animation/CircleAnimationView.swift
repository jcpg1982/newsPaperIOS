//
//  CircleAnimationView.swift
//  NewsPaper
//
//  Created by Juan Pasache on 14/01/25.
//

import SwiftUI

public struct CircleAnimationView: View {
    
    @State private var animate = false
    var colorCircle: Color
    var repeatAnimation: Bool
    
    public init(colorCircle: Color = .blue, repeatAnimation: Bool = false) {
        self.colorCircle = colorCircle
        self.repeatAnimation = repeatAnimation
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .fill(colorCircle)
                    .frame(width: animate ? max(geometry.size.width, geometry.size.height) * 2 : 0,
                           height: animate ? max(geometry.size.width, geometry.size.height) * 2 : 0)
                    .animation(
                        Animation.easeOut(duration: 20)
                            .if(repeatAnimation) { $0.repeatForever(autoreverses: false) },
                        value: animate
                    )
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
            .onAppear {
                animate = true
            }
        }
        .ignoresSafeArea()
    }
}

extension Animation {
    func `if`(_ condition: Bool, transform: (Self) -> Self) -> Self {
        condition ? transform(self) : self
    }
}

#Preview {
    CircleAnimationView()
}
