//
//  SongsViewModel.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 15/06/24.
//

import Foundation
import AVKit

class SongsViewModel: ObservableObject {
    
    @Published var songs: [Song] = [Song]()
    @Published var isPlay: Bool = false
    @Published var audioPlayer: AVPlayer?
    
    func makeHttpRequest() async {
        print("Request start")
        guard let url = URL(string: "https://spotify-api-lac-kappa.vercel.app/api/songs" ) else {
            return
        }
        do {
            let (data,response) = try await URLSession.shared.data(from: url)
            if let response = response as? HTTPURLResponse {
                if response.statusCode != 200 {
                    return
                }
                print(response.statusCode)
            }
            
            if let decoder = try? JSONDecoder().decode([Song].self, from: data){
                print (decoder.count)
                self.songs = decoder
            } else {
                print("error en decoder")
            }
            
        } catch let error {
            print("error", error.localizedDescription)
        }
    }
    
    func playSong(url:String){
        if let url = URL(string: url){
            self.audioPlayer = AVPlayer(url:url)
//            self.audioPlayer?.play()
            
        }
    }
}
