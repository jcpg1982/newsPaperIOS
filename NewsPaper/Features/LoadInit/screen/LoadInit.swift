//
//  ContentView.swift
//  NewsPaper
//
//  Created by Juan Pasache on 14/01/25.
//

import SwiftUI
import Design

struct LoadInit: View {
    
    @StateObject private var loadInitViewModel: LoadInitViewModel = LoadInitViewModel()
    
    var body: some View {
        ZStack {
            CircleAnimationView()
            ImageLoadingView()
        }.padding()
    }
}

#Preview {
    LoadInit()
}
