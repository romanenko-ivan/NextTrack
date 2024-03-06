//
//  ContentView.swift
//  NextTrack
//
//  Created by Романенко Иван on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimated = false
    
    var body: some View {
        Button {
            withAnimation(
                .spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0.0
                )
            ) {
                isAnimated = true
            } completion: {
                isAnimated = false
            }
        } label: {
            HStack(spacing: -4) {
                if isAnimated {
                    Image(systemName: "play.fill")
                        .transition(
                            .scale(isAnimated ? 0 : 1, anchor: .leading)
                            .combined(with: .opacity)
                        )
                }
                
                Image(systemName: "play.fill")
                
                if !isAnimated {
                    Image(systemName: "play.fill")
                        .transition(
                            .scale(isAnimated ? 1 : 0, anchor: .trailing)
                            .combined(with: .opacity)
                        )
                }
            }
            .imageScale(.large)
        }
    }
}

#Preview {
    ContentView()
}
