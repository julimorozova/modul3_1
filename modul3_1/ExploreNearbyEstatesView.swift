//
//  Explore Nearby Estates.swift
//  modul3_1
//
//  Created by Julia Morozova on 20. 2. 2026..
//


import SwiftUI

struct ExploreNearbyEstatesView: View {

    var estateCards: [Estate]
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Explore Nearby Estates")
                .font(.system(size: 18, weight: .bold))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 7) {
                    ForEach(estateCards) {estate in
                        EstateCard(item: estate)
                    }
                }
            }
        }
    }
}
