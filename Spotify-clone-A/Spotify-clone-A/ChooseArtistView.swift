//
//  ChooseArtistView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import SwiftUI

struct ChooseArtistView: View {
    
    private let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    @State private var artistSearchText: String = ""
    @StateObject var chooseArtistViewModel = ChooseArtistViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                    Color("dark").ignoresSafeArea()
                    VStack {
                        Text("Choose 3 or more artists you like")
                            .foregroundStyle(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(10)
                        
                        TextField("Search", text: $artistSearchText)
                            .padding(10)
                            .background(.white)
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.gray, lineWidth: 1)
                            )
                            .padding(.horizontal)
                            .foregroundColor(.black)
                        ScrollView{
                            LazyVGrid(columns: columns, spacing: 10) {
                                ForEach(0..<chooseArtistViewModel.artistas.count) { index in
                                    ButtonAlbumView(imageName: chooseArtistViewModel.artistas[index].image, artist: chooseArtistViewModel.artistas[index].name, tipo: "Tipo")
                                }
                            }
                        }
                        
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ChooseArtistView()
}
