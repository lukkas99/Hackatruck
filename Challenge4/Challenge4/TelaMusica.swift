//
//  TelaMusica.swift
//  Challenge4
//
//  Created by Student21 on 12/04/23.
//

import SwiftUI

struct TelaMusica: View {
    
    let music : Musica
    
    var body: some View {
        VStack{
            Spacer()
            AsyncImage(url: URL(string: music.logo)) { image in
                image.resizable()
            }placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .padding(.leading)
            
            Text(music.name)
                .font(.largeTitle)
                .foregroundColor(.white)
            Text(music.artists.joined(separator: ", "))
                .foregroundColor(.white)
                .font(.title)
            Spacer()
            HStack{
                Image(systemName: "shuffle")
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                Image(systemName: "backward.frame.fill")
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                Image(systemName: "forward.frame.fill")
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                Image(systemName: "repeat")
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
            }
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Gradient(colors: [.blue, .black])
            )
    }
}

struct TelaMusica_Previews: PreviewProvider {
    static var previews: some View {
        TelaMusica(music: Musica(name: "Teste",artists: ["teste", "teste2"], logo: "https://picsum.photos/200"))
    }
}
