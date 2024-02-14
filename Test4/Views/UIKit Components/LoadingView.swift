//
//  loadingView.swift
//  Test4
//
//  Created by Peter-Paul Manzel on 24.01.24.
//

import SwiftUI


struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
    
}



struct LoadingView: View {
    var body: some View {
        ZStack {
            
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ActivityIndicator()
            
        }
    }
}
