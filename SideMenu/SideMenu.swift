//
//  SideMenu.swift
//  SideMenu
//
//  Created by Mohsin Ali Ayub on 18.10.23.
//

import SwiftUI

struct SideMenu<RenderView: View>: View {
    @Binding var isShowing: Bool
    var direction: Edge
    @ViewBuilder var content: RenderView
    
    var body: some View {
        ZStack(alignment: .leading) {
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                content.transition(.move(edge: direction))
                    .background(Color.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .ignoresSafeArea()
        .animation(.easeOut, value: isShowing)
    }
}

