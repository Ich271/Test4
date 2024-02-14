//
//  OrderView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 22.01.24.

/Users/ppm/Desktop/XCodeProjekts/Test4/Test4/Views/Cells
import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
                        
            ZStack {
                
                VStack {
                    
                    List() {
                        
                        ForEach(order.orderItems) {
                            
                            AppetizerListCellView(a: $0)
                            
                        }
                        .onDelete(perform: { indexSet in
                            order.orderItems.remove(atOffsets: indexSet)
                        })
                    }
         
                    Button {
                    }
                    label:{
                        APButton(text: "$" +
                                 String(format: "%.2f",
                                        order.totalPrice) +
                                " - Place Order")
                    }
                    
                }
                            
                
                if order.isEmpty {
                    EmptyView(imageName: "empty-order",
                              message: "You didn't select any appetizers")
                }
                
                
            }
            .navigationTitle("Order")
        }
        
        
        
    }
    
    
    
    
}







