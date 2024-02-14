//
//  AccountViewModel.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 25.01.24.
//

import SwiftUI



final class AccountViewModel: ObservableObject {
    
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.eMail.isEmpty else {
            alertItem = AlertContext.emptyString
            return false
        }
        
        guard user.eMail.isValidEmail else {
            alertItem = AlertContext.invalidEMail
            return false
        }
        
        
        
        return true
    }
    
    
    func saveChanges() {
        guard isValidForm else {return}
        
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
            
        }
        
    }
    
    
    
    
    
    
    func retrieveUser() {
        guard let userData = self.userData else {return}
        
        do {
            let data = try JSONDecoder().decode(User.self, from: userData)
            self.user = data
        } catch {
            alertItem = AlertContext.invalidUserData
            
        }
        
    }
    
}

