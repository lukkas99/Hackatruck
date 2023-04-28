//
//  ContentView.swift
//  Challenge4
//
//  Created by Student21 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    let music = [
            Musica(name: "World Hold On", artists: ["Fisher","Bob Sinclair"], logo: "https://picsum.photos/200"),
            Musica(name: "Innerbloom", artists: ["Rufus Du Sol"], logo: "https://picsum.photos/200"),
            Musica(name: "Unholly", artists: ["Sam Smith","Kim Petras"], logo: "https://picsum.photos/200"),
            Musica(name: "t1", artists: ["teste1"], logo: ""),
            Musica(name: "t2", artists: ["teste2"], logo: "https://picsum.photos/200"),
            Musica(name: "t3", artists: ["teste3"], logo: "https://picsum.photos/200"),
            Musica(name: "t4", artists: ["teste4"], logo: "https://picsum.photos/200"),
            Musica(name: "t5", artists: ["teste5"], logo: "https://picsum.photos/200"),
            Musica(name: "t6", artists: ["teste6"], logo: "https://picsum.photos/200"),
            Musica(name: "t7", artists: ["teste7"], logo: "https://picsum.photos/200"),
            Musica(name: "t8", artists: ["teste8"], logo: "https://picsum.photos/200"),
            Musica(name: "t9", artists: ["teste9"], logo: "https://picsum.photos/200"),
            Musica(name: "t10", artists: ["teste10"], logo: "https://picsum.photos/200"),
        ]
    let sugmusic = [
        Musica(name: "s1", artists: ["suger1"], logo: "https://picsum.photos/200"),
        Musica(name: "s2", artists: ["suger2"], logo: "https://picsum.photos/200"),
 ]
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    Image("bg")
                        
                        .resizable()
                        .padding(.top)
                        .scaledToFit()
                        .frame(width: 200, height: 250)
                    Text("HackaFM")
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    HStack{
                        AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                            image.resizable()
                        }placeholder: {
                            ProgressView()
                        }
                        .frame(width: 25, height: 25)
                        .padding(.leading)
                        Text("HackaSong")
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                        ForEach(music, id: \.id) { music in
                            NavigationLink(destination: TelaMusica(music: music)){
                                HStack{
                                    Image(music.logo)
                                    
                                    AsyncImage(url: URL(string: music.logo)) { image in
                                        image.resizable()
                                    }placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    VStack{
                                        Text(music.name)
                                            .foregroundColor(.white)
                                            .font(.title)
                                        Text(music.artists.joined(separator: ", "))
                                            .foregroundColor(.white)
                                        
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                            }
                        }
                   Text("Sugeridos")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .foregroundColor(.white)
                    HStack{
                        ForEach(sugmusic, id: \.id) { sugmusic in
                            NavigationLink(destination: TelaMusica(music: sugmusic)){
                                VStack{
                                    AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                                        image.resizable()
                                    }placeholder: {
                                        ProgressView()
                                    }
                                    .scaledToFit()                            .padding(.leading)
                                    Text(sugmusic.name)
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Gradient(colors: [.blue, .black])
                )
        }.accentColor(.black)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
