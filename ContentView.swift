//
//  ContentView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-28.
//

import SwiftUI

struct ContentView: View {
    @State public var showMenu: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .blur(radius: showMenu ? 5 : 0)
                .offset(x: showMenu ? 300 : 0, y:0)
                .animation(.easeInOut(duration: 0.3), value: showMenu)
                .transition(.slide)
            // MainTabView Shadow if showMenu
            if showMenu {
                ZStack {
                    Color.black.opacity(showMenu ? 0.25 : 0)
                        .ignoresSafeArea(.all)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                showMenu = false
                            }
                        }
                }
            }
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300, y: 0 )
                .background(showMenu ? Color.white : Color.clear)
                .animation(.easeInOut(duration: 0.3), value: showMenu)
                .transition(.slide)
                .overlay {
                    if showMenu {
                        Capsule()
                            .foregroundColor(Color.gray.opacity(0.1))
                            .frame(width: 1, height: .infinity)
                            .ignoresSafeArea(.all)
                            .offset(x: 150)
                    }
                }
        }
        .onAppear {
            showMenu = false
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if showMenu == false {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            showMenu.toggle()
                        }
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
}

#Preview {
    NavigationView {
        ContentView()
    }
}
