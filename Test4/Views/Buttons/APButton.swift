//
//  APButton.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 25.01.24.
//

import SwiftUI


struct APButton: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(.primary)
            .cornerRadius(10)
    }
}
