//
//  MainView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 22/06/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SongsView()
                .tabItem {
                    Label(
                        title: { Text("Home") },
                        icon: { Image(systemName: "house") }
                    )
                }
            SearchView()
                .tabItem {
                    Label(
                        
                        title: { Text("Search") },
                        icon: { Image(systemName: "magnifyingglass") }

                    )
                }
            LibraryView()
                .tabItem {
                    Label(
                        title: { Text("Library") },
                        icon: { Image(systemName: "books.vertical.fill") }
                    )
                }
        }
    }
}

#Preview {
    MainView()
}