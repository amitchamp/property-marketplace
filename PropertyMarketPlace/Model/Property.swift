//
//  Property.swift
//  FindProperty
//
//  Created by Amit on 07/04/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import Foundation
import SwiftUI

struct Property: Identifiable {
    let id = UUID()
    let title: String
    let address: String
    let price: Float
    let facility: [Facility]
    let rating: Float
    let totalReviews: Int
    let isFavourite: Bool
    let coverImage: String
    let images: [String]
    let type: String
    let ratingDescription: [RatingDetail]
}

extension Property {
    static func all() -> [Property] {
        return [
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 259.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 4.5,
                totalReviews: 2450,
                isFavourite: true,
                coverImage: "Property_1",
                images: ["Property_1", "Property_2", "Property_3", "Property_4", "Property_5"],
                type: "Sell",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 350.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 4.5,
                totalReviews: 2450,
                isFavourite: false,
                coverImage: "Property_2",
                images: ["Property_2", "Property_3", "Property_4", "Property_5", "Property_6"],
                type: "Rent",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 299.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 4.5,
                totalReviews: 2450,
                isFavourite: false,
                coverImage: "Property_3",
                images: ["Property_3", "Property_4", "Property_5", "Property_6", "Property_7"],
                type: "Sell",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 799.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 5.0,
                totalReviews: 2450,
                isFavourite: false,
                coverImage: "Property_4",
                images: ["Property_4", "Property_5", "Property_6", "Property_7", "Property_8"],
                type: "Sell",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 849.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 3.5,
                totalReviews: 2450,
                isFavourite: true,
                coverImage: "Property_5",
                images: ["Property_5", "Property_6", "Property_7", "Property_8", "Property_9"],
                type: "Rent",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 599.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 4.0,
                totalReviews: 2450,
                isFavourite: false,
                coverImage: "Property_6",
                images: ["Property_6", "Property_7", "Property_8", "Property_9", "Property_10"],
                type: "Sell",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 489.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 4.5,
                totalReviews: 2450,
                isFavourite: false,
                coverImage: "Property_7",
                images: ["Property_7", "Property_8", "Property_9", "Property_1", "Property_2"],
                type: "Rent",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 897.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 3.0,
                totalReviews: 2450,
                isFavourite: true,
                coverImage: "Property_8",
                images: ["Property_8", "Property_9", "Property_10", "Property_1", "Property_2"],
                type: "Sell",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 987.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 4.5,
                totalReviews: 2450,
                isFavourite: false,
                coverImage: "Property_9",
                images: ["Property_9", "Property_10", "Property_1", "Property_2", "Property_3"],
                type: "Rent",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            ),
            Property(
                title: "4 BHK Independent House",
                address: "Najafgarh, Delhi",
                price: 949.00,
                facility: [
                    Facility(iconName: "bathtub", name: "4 Baths"),
                    Facility(iconName: "bed", name: "6 Beds"),
                    Facility(iconName: "floor", name: "Floor 2"),
                    Facility(iconName: "garage", name: "Garage"),
                    Facility(iconName: "wifi", name: "Wifi"),
                    Facility(iconName: "tv", name: "TV")
                ],
                rating: 5.0,
                totalReviews: 2450,
                isFavourite: true,
                coverImage: "Property_10",
                images: ["Property_10", "Property_1", "Property_2", "Property_3", "Property_4"],
                type: "Rent",
                ratingDescription: [
                    RatingDetail(name: "Cleanliness", rating: 3),
                    RatingDetail(name: "Affordablity", rating: 4),
                    RatingDetail(name: "Staff", rating: 3),
                    RatingDetail(name: "Satisfaction", rating: 4)
                ]
            )
        ]
    }
    
    static func getFavourite() -> [Property] {
        let allProperties: [Property] = Property.all()
        var favouriteProperties: [Property] = []
        
        for property in allProperties {
            if property.isFavourite == true {
                favouriteProperties.append(property)
            }
        }

        return favouriteProperties
    }
    
    static func getTopProperty() -> [Property] {
        return Array(Property.all().prefix(5))
    }
    
    static func getOneProperty() -> Property {
        return Property.all()[0]
    }
}
