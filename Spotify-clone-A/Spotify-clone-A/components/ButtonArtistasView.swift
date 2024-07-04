//
//  ButtonArtistasView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 1/06/24.
//

import SwiftUI
import UIKit

struct ButtonArtistasView: View {
    var title: String
    var image: String = ""
    var type: String
    var body: some View {
        
        Button {
            print("evento tap")
        } label:{
            HStack{
                if image != "" {
                    Image(image)
                        .resizable()
                        .frame(width: 70,height: 70)
                        .clipShape(Circle())
                        .padding(.leading,10)
                    VStack(alignment: .leading){
                        Text(title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                        Text(type)
                        
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal,10)
                    Spacer()
                }
            }
        }
        .background(.black)
        .padding(.horizontal,5)
        
    }
}

#Preview {
    ButtonArtistasView(title: "tt", image: "me", type: "type")
}
