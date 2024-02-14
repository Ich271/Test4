//
//  Test4App.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 22.01.24.
//

import SwiftUI

@main
struct Test4App: App {
    
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
