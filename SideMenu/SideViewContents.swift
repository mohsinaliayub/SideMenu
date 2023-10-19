//
//  SideViewContents.swift
//  SideMenu
//
//  Created by Mohsin Ali Ayub on 18.10.23.
//

import SwiftUI

struct SideViewContents: View {
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            sideMenuTopView()
            
            VStack {
                Text("Side Menu")
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray)
    }
    
    @ViewBuilder
    private func sideMenuTopView() -> some View {
        VStack {
            HStack {
                Button(action: { presentSideMenu.toggle() }) {
                    Image(systemName: "x.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.white)
                }
                .frame(width: 34, height: 34)
                
                Spacer()
                
                
            }
        }
        .frame(maxWidth: .infinity)
        .padding([.leading, .top], 40)
        .padding(.bottom, 30)
    }
}
