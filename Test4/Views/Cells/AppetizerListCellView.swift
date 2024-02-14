//
//  AppetizerListCellView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 23.01.24.
//

import Foundation
import SwiftUI

struct AppetizerListCellView: View {
    
    let a: Appetizer
    
    var body: some View {
        ZStack {
        
            Rectangle()
                .frame(width: .infinity)
                .foregroundStyle(Color(.secondarySystemBackground))
                .opacity(0.000001)
                .ignoresSafeArea(.all)
        
            HStack {
                AppetizerRemoteImage(urlString: a.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
                VStack(alignment: .leading, spacing: 5) {
                    Text(a.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    
                    
                    Text("$\(a.price.formatted())")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                    
                    
                }
                .padding(.leading)
                Spacer()
                
            }
        }
        
    }
}

