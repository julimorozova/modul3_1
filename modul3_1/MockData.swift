//
//  MockData.swift
//  modul3_1
//
//  Created by Julia Morozova on 19. 2. 2026..
//

let categories = [
        CategoryItem(name: "Building", icon: "building.2"),
        CategoryItem(name: "House", icon: "house"),
        CategoryItem(name: "Hotel", icon: "bed.double")
]

let locations = [
        LocationItem(name: "Bali", imageName: "lok1"),
        LocationItem(name: "Jakarta", imageName: "lok2"),
        LocationItem(name: "Yogyakarta", imageName: "lok3")
]

let estateCards: [Estate] = [
        Estate(
            name: "Wings Tower",
            image: "Estate1",
            price: 220,
            rating: 4.9,
            location: "Jakarta, Indonesia",
            isFavorite: true
        ),
        Estate(
            name: "Sky Dandelions",
            image: "Estate2",
            price: 290,
            rating: 4.9,
            location: "Jakarta, Indonesia",
            isFavorite: false
        ),
        Estate(
            name: "Emerald Garden",
            image: "Estate1",
            price: 180,
            rating: 4.7,
            location: "Bali, Indonesia",
            isFavorite: false
        )
    ]
