//
//  LoginView.swift
//  History Timeline
//
//  Created by Ivan Larinin on 2025-02-19.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var error: String?
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if let error = error {
                Text(error)
                    .foregroundColor(.red)
            }
            
            Button("Login") {
                login()
            }
            
            Button("Register") {
                // Placeholder for registration functionality
            }
        }
        .padding()
    }
    
    private func login() {
        // Here you would check credentials against stored users
        // For simplicity, we'll just simulate a login:
        if username == "test" && password == "1234" {
            // Success scenario - move to main app or profile view
            error = nil
        } else {
            error = "Invalid credentials"
        }
    }
}

#Preview {
    LoginView()
}
