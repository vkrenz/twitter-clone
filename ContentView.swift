//
//  ContentView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bird.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Twitter Clone")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
