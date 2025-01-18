//
//  ContentView.swift
//  Landmarks
//
//  Created by 최범수 on 2025-01-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .multilineTextAlignment(.center)
                
            HStack {
                Text("Joshua National Tree Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
