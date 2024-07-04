//
//  ChooseArtistViewModel.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import Foundation

class ChooseArtistViewModel: ObservableObject {
    
    @Published var artistas: [AlbumsArtists] = [
        AlbumsArtists(name: "Devil's Gun", image: "devilsgun"),
        AlbumsArtists(name: "Me", image: "me"),
        AlbumsArtists(name: "My turn", image: "myturn"),
        AlbumsArtists(name: "Paradise", image: "paradise"),
        AlbumsArtists(name: "Pink Floyd", image: "pinkfloyd"),
        AlbumsArtists(name: "Rafale", image: "rafale"),
        AlbumsArtists(name: "X-Com", image: "xcom"),
    ]
}
