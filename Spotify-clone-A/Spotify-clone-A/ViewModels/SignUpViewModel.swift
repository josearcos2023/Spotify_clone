//
//  SignUpViewModel.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import Foundation
import FirebaseAuth

class SignUpViewModel: ObservableObject{
    
    var appState: AppState = .shared
    
    @Published var elements: [SignUpForm] = [
        SignUpForm(title: "What’s your email?", input: "", helpText: "You’ll need to confirm this email later.", keyboardType: .emailAddress, value: ""),
        SignUpForm(title: "Create a password", input: "", helpText: "Use atleast 8 characters.",keyboardType: .default, value: "", isSecureField: true),
        SignUpForm(title: "What’s your gender?", input: "", helpText: "",keyboardType: .default, value: ""),
        SignUpForm(title: "What’s your name?", input: "", helpText: "This appears on your spotify profile",keyboardType: .default, value: ""),
        ]
    
    func createUser() {
        
        let email = elements[0].value.lowercased()
        let password = elements[1].value
        
        Auth.auth().createUser(withEmail: email, password: password){authResult, error in
            
            error == nil ? (self.appState.currentScreen = .main) : (print(error?.localizedDescription))
            
        }
    }
}
