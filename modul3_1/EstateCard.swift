//
//  EstateCard.swift
//  modul3_1
//
//  Created by Julia Morozova on 19. 2. 2026..
//
import SwiftUI

struct Estate: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    let rating: Double
    let location: String
    let isFavorite: Bool
}

struct EstateCard: View {

    var item: Estate

    var body: some View {
        VStack(spacing: 10) {
            ZStack(alignment: .topTrailing) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 160)
                    .clipped()
                    .cornerRadius(15)

                Button(action: {}) {
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                        .padding(8)
                        .background(Circle().fill(.white))
                }
                .padding(8)



                HStack() {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.darkBlueApp)
                        .frame(width: 25, height: 25)
                        .overlay(
                            Image(systemName: "building.2.fill")
                                .frame(width: 15, height: 15)
                                .foregroundColor(.white.opacity(0.7))
                                .padding(8)
                        )

                    Spacer()
                    HStack(spacing: 4) {
                        Text("$ \(item.price)")
                            .font(.system(size: 14))
                        Text("/month")
                            .font(.system(size: 8))
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(.darkBlueApp)
                    .cornerRadius(8)
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .frame(height: 160)


            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.darkBlueApp)

                HStack(spacing: 15) {
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text(String(item.rating))
                            .fontWeight(.bold)
                            .foregroundColor(.darkBlueApp)
                    }

                    HStack(spacing: 4) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.orange)
                        Text(item.location)
                            .font(.system(size: 12))
                            .foregroundColor(.darkBlueApp)
                    }
                }

            }
            .padding(.horizontal, 5)
        }
        .padding(8)
        .background(.greyApp)
        .cornerRadius(25)
    }
}

