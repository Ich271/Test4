//
//  Alert.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 24.01.24.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                       message: Text("The data is messed up"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Invalid Response"),
                                       message: Text("idk fix ur game dawg"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Invalid Response"),
                                      message: Text("get fixed boiii"),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("alt + f4"),
                                      message: Text("L"),
                                      dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    
    static let emptyString      = AlertItem(title: Text("Empty String"),
                                            message: Text("Please ensure all fields in the form have been filled out"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEMail     = AlertItem(title: Text("Invalid E-Mail"),
                                            message: Text("Please ensure the E-Mail is a valid E-Mail"),
                                            dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess   = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Profile information saved successfully"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidUserData   = AlertItem(title: Text("Profile Erros"),
                                            message: Text("There was an eror saving or retrieving your profile"),
                                            dismissButton: .default(Text("OK")))
    
 
    
    //MARK: - Order Alerts
 
    
    
    static let invalidOrderData   = AlertItem(title: Text("Order error"),
                                            message: Text("idk"),
                                            dismissButton: .default(Text("OK")))
}


