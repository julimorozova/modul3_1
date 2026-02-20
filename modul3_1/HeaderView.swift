//
//  HeaderView.swift
//  modul3_1
//
//  Created by Julia Morozova on 19. 2. 2026..
//

import SwiftUI
struct HeaderView: View {
    var body: some View {
        HStack {
            HStack(spacing: 20) {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.orange)
                Text("New yorka, USA")
                    .font(.system(size: 10))
            }

            .padding(EdgeInsets(top: 18, leading: 16, bottom: 18, trailing:16))
            .overlay(
                Capsule()
                    .stroke(.greyApp, lineWidth: 1)
            )

            Spacer()
            ZStack {
                Circle()
                    .fill(.greyApp)
                    .frame(width: 50, height: 50)
                Image(systemName: "bell")
                Rectangle()
                    .fill(.greyApp)
                    .frame(width: 12, height: 12)
                    .offset(x: 6, y: -9)
                    .overlay(alignment: .bottomLeading) {
                        Circle()
                            .fill(.red)
                            .frame(width: 6, height: 6)
                            .offset(x: 7, y: -10)
                    }
            }
            Image(.avatar)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipped()
                .cornerRadius(25)
                .background(Capsule().stroke(.greyApp, lineWidth: 3))
        }
    }
}


