//
//  AppetizerListView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 22.01.24.
//

import Foundation
import SwiftUI


struct AppetizerListView: View {
    
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        ZStack {
            
            NavigationStack {
                List(viewModel.appetizers) {
                    appetizer in
                    AppetizerListCellView(a: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetailedView = true
                            viewModel.selectedAppetizer = appetizer
                            
                        }
                        
                    
                }
                .navigationTitle("Appetizers")
                .disabled(viewModel.isShowingDetailedView)
                
                
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetailedView ? 20 : 0)
            
            
            
           
            
            if viewModel.isShowingDetailedView {
                Rectangle()
                    .frame(width: .infinity, height: .infinity)
                    .opacity(0.0001)
                    .ignoresSafeArea()
                    .onTapGesture {
                        viewModel.isShowingDetailedView = false
                    }

                
                AppetizerDetailedView(
                    a: viewModel.selectedAppetizer!,
                    isShowingDetailedView: $viewModel.isShowingDetailedView,
                    viewModel: viewModel)
            }
            
            if viewModel.isLoading {
                
                LoadingView()
            }
            
            
            
            
            
        }
        .alert(item: $viewModel.alertItem) {
            
            alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
            
            
        }
    }
}

#Preview {
    AppetizerListView()
}


