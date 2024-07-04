//
//  LaunchViewModel.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 22/06/24.
//

import Foundation
import FirebaseAuth

class LaunchViewModel: ObservableObject {
    
    var appState:AppState = .shared
    
    init(){
        
        appState.currentScreen = Auth.auth().currentUser == nil ? .signIn : .main
        
    }
}
