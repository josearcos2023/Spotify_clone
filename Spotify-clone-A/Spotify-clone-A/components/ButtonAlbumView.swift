//
//  ButtonAlbumView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import SwiftUI

struct ButtonAlbumView: View {
    
    var imageName: String
    var artist: String
    var tipo:String
    
    var body: some View {
        VStack {
            Button(action: {
                print(imageName)
            }) {
                if imageName != "" {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                } else {
                    Circle()
                        .fill(Color.black)
                }
            }.frame(width: 120, height: 120)
            
            
            Text(artist)
                .foregroundStyle(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ButtonAlbumView(imageName: "me", artist: "Billie Eilish", tipo: "Artista")
}
