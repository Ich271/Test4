//
//  Appetizer.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 23.01.24.
//

import Foundation



struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
    
    
}


struct AppetizerResponse: Decodable {
    
    let request: [Appetizer]
}


struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Sample",
                                           description: "Sample Sample Sample Sample Sample",
                                           price: 9.99,
                                           imageURL: "food-placeholder",
                                           calories: 99,
                                           protein: 9,
                                           carbs: 9)
    
    
    static let Appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer,]
}
