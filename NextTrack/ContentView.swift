//
//  ContentView.swift
//  NextTrack
//
//  Created by Романенко Иван on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonsCount = [UUID(), UUID()]
    
    var body: some View {
        Button {
            buttonsCount.removeLast()
            buttonsCount.insert(UUID(), at: 0)
        } label: {
            HStack(spacing: -4) {
                ForEach(buttonsCount, id: \.self) { _ in
                    Image(systemName: "play.fill")
                        .font(.title)
                        .transition(
                            .scale
                                .animation(
                                    .spring(
                                        response: 0.5,
                                        dampingFraction: 0.5,
                                        blendDuration: 0.0
                                    )
                                )
                        )
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
