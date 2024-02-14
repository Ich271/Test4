//
//  File.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 25.01.24.
//

import SwiftUI

struct APXDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .foregroundStyle(.primary)
                .imageScale(.medium)
                .frame(width: 44, height: 44)
        }
    }
}
