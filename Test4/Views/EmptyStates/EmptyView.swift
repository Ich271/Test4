//
//  EmptyView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 26.01.24.
//

import SwiftUI


struct EmptyView: View {
    
    
    let imageName: String
    let message: String

    
    var body: some View {
        
        ZStack{
            
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack{
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.secondary)
                    .padding()
                
            }
            
        }
    }
}

#Preview {
    EmptyView(imageName: "empty-order", message: "No orders yet")
}
