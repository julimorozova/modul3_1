//
//  CategoriesView.swift
//  modul3_1
//
//  Created by Julia Morozova on 19. 2. 2026..
//

import SwiftUI

struct CategoryItem: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
}

struct CategoriesView: View {
    var categories: [CategoryItem]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false)  {
            HStack(spacing: 16) {
                ForEach(categories) { category in
                    CategoryView(item: category)
                }
        }
    }
}


struct CategoryView: View {
    var item: CategoryItem

    var body: some View {
        ZStack {
            HStack {
                Image(systemName: item.icon)
                    .foregroundColor(.blue)
                Text(item.name)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }

        }
        .frame(width: 100, height: 50)
        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing:5))
        .overlay(
            RoundedRectangle(cornerRadius: 16).stroke(.greyApp, lineWidth: 1)
            )
        }
    }
}

