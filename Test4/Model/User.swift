//
//  User.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 25.01.24.
//

import Foundation


struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var eMail = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
