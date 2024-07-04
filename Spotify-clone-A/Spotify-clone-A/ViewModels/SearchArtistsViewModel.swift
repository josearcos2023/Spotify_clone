//
//  SearchArtistsViewModel.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import Foundation

class SearchArtistsViewModel: ObservableObject {
    
    @Published var artistasSearch: [ArtistasEva] = [
        ArtistasEva(name: "Devil's Gun", image: "devisgun", tipo: "Artista"),
        ArtistasEva(name: "Me", image: "me", tipo: "Artista"),
        ArtistasEva(name: "My turn", image: "myturn", tipo: "Artista"),
        ArtistasEva(name: "Paradise", image: "paradise", tipo: "Artista"),
        ArtistasEva(name: "Pink Floyd", image: "pinkfloyd", tipo: "Artista"),
        ArtistasEva(name: "Rafale", image: "rafale", tipo: "Artista"),
        ArtistasEva(name: "X-Com", image: "xcom", tipo: "Artista"),
    ]
}
