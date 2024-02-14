//
//  AppetizerViewModel.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 23.01.24.
//

import Foundation
import SwiftUI


final class AppetizerListViewModel: ObservableObject {
    
    
    
    @AppStorage("order") private var orderData: Data?
    @Published var order = Order()
    
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetailedView = false
    @Published var selectedAppetizer: Appetizer?
    
   
    
    
    
    
    
    
    
    
    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers {
            
            result in
            
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                    
                    case .success(let appetizers):
                        self.appetizers = appetizers
                        break
                        
                    case .failure(let error):
                        switch error {
                            
                            case .invalidResponse:
                                self.alertItem = AlertContext.invalidResponse
                            
                            case .invalidURL:
                                self.alertItem = AlertContext.invalidURL
                            
                            case .invalidData:
                                self.alertItem = AlertContext.invalidData
                            
                            case .unableToComplete:
                                self.alertItem = AlertContext.unableToComplete
                                
                        }
                    }
            }
            
            
            
        }
    }
    
    
}





