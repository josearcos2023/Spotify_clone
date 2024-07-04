//
//  SearchArtistView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import SwiftUI

struct SearchArtistView: View {
    
    @State var artistSearchText: String = ""
    @StateObject var artistSearchView = SearchArtistsViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack {
                    Color(.black).ignoresSafeArea()
                    VStack {
                        HStack{
                            HStack (alignment: .center){
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                TextField("", text: $artistSearchText, prompt: Text("Search").foregroundColor(.white))
                            }
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.oscuro, lineWidth: 1)
                            )
                            .background(Color.oscuro)
                            .cornerRadius(8)
                            .padding()
                            
                            Button{} label:{
                                Text("Cancel")
                                    .foregroundColor(.white)
                            }
                        }.padding(5)
                        
                        VStack (alignment: .leading){
                            Text("Recent searches")
                                .foregroundColor(.white)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(20)
                            ScrollView {
                                ForEach(0..<artistSearchView.artistasSearch.count, id: \.self){
                                    index in
                                    
                                    ButtonArtistasView(title: artistSearchView.artistasSearch[index].name, image: artistSearchView.artistasSearch[index].image, type: artistSearchView.artistasSearch[index].tipo)
                                }
                            }
                            
                        }
                        Spacer()
                    }
                    
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SearchArtistView()
}
