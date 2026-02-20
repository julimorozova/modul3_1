//
//  TopLocationsView.swift
//  modul3_1
//
//  Created by Julia Morozova on 19. 2. 2026..
//

import SwiftUI

struct LocationItem: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct TopLocationsView: View {
    var locations: [LocationItem]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            HStack(alignment: .bottom) {
                Text("Top Locations")
                    .font(.system(size: 24, weight: .bold))

                Spacer()

                Button("explore") {

                }
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(locations) { loc in
                        TopLocationView(item: loc)
                    }
                }
            }
        }
    }
}

struct TopLocationView: View {
    var item: LocationItem

    var body: some View {

        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipped()
                .cornerRadius(20)
            Text(item.name)
                .font(.system(size: 14))
                .foregroundColor(.darkBlueApp)
        }
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing:16))
        .background(.greyApp)
        .clipShape(Capsule())
        .overlay(
            Capsule().stroke(.greyApp, lineWidth: 2)
            )
        }
    }


