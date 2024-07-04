//
//  SongsView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 15/06/24.
//

import SwiftUI

struct SongsView: View {
    
    @StateObject var songViewModel = SongsViewModel()
    
    var body: some View {
        ZStack{
            Color("dark")
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Lista de canciones")
                    .font(.title3)
                    .foregroundStyle(.white)
                
                ScrollView{
                    ForEach(songViewModel.songs, id: \.id){
                        song in
                        HStack {
                            AsyncImage(url: URL(string: song.image)) { image in 
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)

                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 50, height: 50)
                            Spacer()
                            VStack (alignment: .leading, spacing: 5){
                                Text(song.title)
                                    .foregroundStyle(.white)
                                    .font(.body)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                Text(song.description)
                                    .foregroundStyle(.white)
                                    .font(.caption2)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                Button(action: {
                                    songViewModel.playSong(url: song.mp3)
                                    if !songViewModel.isPlay {
                                        songViewModel.audioPlayer?.play()
                                    } else {
                                        songViewModel.audioPlayer?.pause()
                                    }
                                    songViewModel.isPlay.toggle()
                                }, label: {
                                    Image(systemName: !songViewModel.isPlay ? "play.circle" : "pause.circle.fill")
                                        .foregroundStyle(.white)
                                        .font(.caption2)
                                })
                            }
                        }.padding(.bottom)
                    }.task {
                        await songViewModel.makeHttpRequest()
                    }
                }
            }
        }
    }
}

#Preview {
    SongsView()
}