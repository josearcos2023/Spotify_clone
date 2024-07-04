//
//  AppDelegate.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import Foundation
import FirebaseCore
import UIKit


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
