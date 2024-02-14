//
//  AccountView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 22.01.24.
//

import Foundation
import SwiftUI


struct AccountView: View {
    
    
    
@StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack{
            Form() {
                
                Section(content: {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocorrectionDisabled(true)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .autocorrectionDisabled(true)
                    TextField("E-Mail", text: $viewModel.user.eMail)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthdate,
                               displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }

                },
                        header: {
                    Text("Personal Information")})
                
                
                
                
                
               Section(content: {
                   
                   Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                       .toggleStyle(SwitchToggleStyle(tint: .primary))
                   Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                       .toggleStyle(SwitchToggleStyle(tint: .primary))
                   
               },
                       
                       
                       
                       header: {
                   
                   Text("Requests")
               })
                    
            }
            .navigationTitle("Account")
        }
        .onAppear() {
            viewModel.retrieveUser()
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
    AccountView()
}
