//
//  ContentView.swift
//  modul3_1
//
//  Created by Julia Morozova on 18. 2. 2026..
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 27) {
            VStack(alignment: .leading, spacing: 37) {

                HeaderView()
                Text("Hey, Redoyan")
                    .font(.system(size: 32, weight: .bold))
            }
            CategoriesView(categories: categories)

            VStack(spacing: 30) {
                TopLocationsView(locations: locations)
                ExploreNearbyEstatesView(estateCards: estateCards)
            }

            Spacer()
        }
        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
    }

}

#Preview {
    ContentView()
}
