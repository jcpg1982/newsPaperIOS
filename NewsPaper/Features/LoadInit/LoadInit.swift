//
//  ContentView.swift
//  NewsPaper
//
//  Created by Juan Pasache on 14/01/25.
//

import SwiftUI

struct LoadInit: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            CustomText(content:"Hello World es una prueba")
        }.padding()
    }
}

#Preview {
    LoadInit()
}
