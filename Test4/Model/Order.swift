//
//  Order.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 25.01.24.
//

import Foundation

/*
struct Order: Codable {
    
    var orderItems: [Appetizer] = []
    var totalPrice: Double {
        var total = 0.0
        orderItems.forEach({
            total += $0.price
        })
        return total
    }
    var isEmpty: Bool {
        return orderItems.isEmpty
    }
    
    
    func toString() -> String {
        
         let a = orderItems[0].name 
        
        return a
    }
    
    
    
    
    
    
    
    
    
}
*/

final class Order: ObservableObject {
    
    
    
    
    var orderItems: [Appetizer] = []
    var totalPrice: Double {
        var total = 0.0
        orderItems.forEach({
            total += $0.price
        })
        return total
    }
    var isEmpty: Bool {
        return orderItems.isEmpty
    }
    
    
    func add(_ appetizer: Appetizer){
        orderItems.append(appetizer)
        
        
    } 
}
