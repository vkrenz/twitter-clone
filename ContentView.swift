//
//  ContentView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-28.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu: Bool = true
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
            // MainTabView Shadow if showMenu
            if showMenu {
                ZStack {
                    Color.black.opacity(0.25)
                        .ignoresSafeArea(.all)
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                showMenu = false
                            }
                        }
                }
            }
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300, y: 0 )
                .background(showMenu ? Color.white : Color.clear)
                .overlay {
                    if showMenu {
                        Capsule()
                            .foregroundColor(.gray.opacity(0.3))
                            .frame(width: 0.75, height: .infinity)
                            .ignoresSafeArea(.all)
                            .offset(x:150)
                    }
                }
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                Button(action: {
                    showMenu.toggle()
                }, label: {
                    // TODO: Replace with User Profile Photo
                    // User Profile Photo
                    Circle()
                        .frame(width: 32, height: 32)
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
