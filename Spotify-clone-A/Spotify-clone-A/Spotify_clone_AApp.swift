//
//  Spotify_clone_AApp.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 11/05/24.
//

import SwiftUI

@main
struct Spotify_clone_AApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    let persistenceController = PersistenceController.shared

    @StateObject var appState: AppState = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .launch:
                LaunchView()
                    .environmentObject(appState)
            case .signIn:
                SignInView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            }
        }
    }
}
