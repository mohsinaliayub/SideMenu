//
//  ContentView.swift
//  SideMenu
//
//  Created by Mohsin Ali Ayub on 18.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var presentSideMenu = false
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea(edges: .all)
            
            VStack {
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top) {
                ZStack {
                    HStack {
                        Button(action: { presentSideMenu.toggle() }) {
                            Image(systemName: "line.3.horizontal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        
                        Spacer()
                    }
                    .padding(.leading)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(Color.white)
                .zIndex(1)
                .shadow(radius: 0.5)
            }
            .background(Color.gray.opacity(0.8))
            
            sideMenu()
        }
        .frame(maxWidth: .infinity)
    }
    
    @ViewBuilder
    private func sideMenu() -> some View {
        SideMenuView(isShowing: $presentSideMenu, direction: .leading) {
            SideViewContents(presentSideMenu: $presentSideMenu)
                .frame(width: 300)
        }
    }
}

#Preview {
    ContentView()
}
