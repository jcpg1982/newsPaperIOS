//
//  CustomText.swift
//  NewsPaper
//
//  Created by Juan Pasache on 14/01/25.
//

import SwiftUI

struct CustomText: View {
    
    let content: String
    let font: Font
    let color: Color
    let alignment: TextAlignment
    let maxLines: Int
    let maxWidth: CGFloat
    let hasUnderline: Bool
    
    init(
        content: String,
        font: Font = .body,
        color: Color = .primary,
        alignment: TextAlignment = .leading,
        maxLines: Int = 3,
        maxWidth: CGFloat = .infinity,
        hasUnderline: Bool = false
    ) {
        self.content = content
        self.font = font
        self.color = color
        self.alignment = alignment
        self.maxLines = maxLines
        self.maxWidth = maxWidth
        self.hasUnderline = hasUnderline
    }
    
    var body: some View {
        Text(content)
            .font(font)
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
            .lineLimit(maxLines)
            .frame(maxWidth: maxWidth)
            .multilineTextAlignment(alignment)
            .underline(hasUnderline)
    }
}

#Preview {
    CustomText(content:"Hello World es una prueba", font: .title, color: .blue)
    CustomText(content:"Hello World es una prueba")
    CustomText(content:"Hello World es una prueba",
               hasUnderline: true)
}
