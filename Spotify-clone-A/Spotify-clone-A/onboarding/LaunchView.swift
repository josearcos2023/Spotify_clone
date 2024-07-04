//
//  LaunchView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 22/06/24.
//

import SwiftUI

struct LaunchView: View {
    
    @StateObject var launchViewModel = LaunchViewModel()
    
    var body: some View {
        ZStack{
            Color("dark")
                .ignoresSafeArea()
            Image("logo-spotify")
                .resizable()
                .frame(width: 120, height: 120)
        }
    }
}

#Preview {
    LaunchView()
}
