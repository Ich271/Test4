//
//  DetailedView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 25.01.24.
//

import SwiftUI



struct AppetizerDetailedView: View {
    let a: Appetizer
    @Binding var isShowingDetailedView: Bool
    @ObservedObject var viewModel: AppetizerListViewModel
    @EnvironmentObject var order: Order
    var body: some View {
        VStack {
            
            AppetizerRemoteImage(urlString: a.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 320, height: 225)
                .ignoresSafeArea()
            
            
            VStack {
                Text(a.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(a.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                
                
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(a.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
              
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(a.carbs) g")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
           
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(a.protein) g")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
             
                    
                }
                
                
                
            }
            Spacer()
            Button {
                order.add(a)
                isShowingDetailedView = false
            } label: {
                APButton(text: "$\(a.price.formatted()) - Add to Order")
                
            }
            .padding(.bottom)
            
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetailedView = false
            
            
        } label: {
            APXDismissButton()
        }, alignment: .topTrailing)
        
    }
    
    
}







