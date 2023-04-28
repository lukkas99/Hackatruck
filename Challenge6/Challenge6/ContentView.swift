//
//  ContentView.swift
//  Challenge6
//
//  Created by Lucas on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    //                Text("\(viewModel.chars.count)")
                    ZStack{
                        
                        AsyncImage(url: URL(string: "https://s2.glbimg.com/u-X1shZodYHh_AZudo5rcxvM9Do=/0x0:1600x900/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2022/F/w/oHzuiAQOSuOODaXGr87A/cerveja-superprix.jpg")) { image in
                            image.resizable()
                        }placeholder: {
                            ProgressView()
                        }
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 350, height: 250, alignment: .center)
                        Text("162")
                            .background(.blue)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding([.top, .leading])

                    }
                    ForEach(viewModel.chars, id: \.name){ beer in
                        //                    if let name = beer.name{
                        NavigationLink(destination: CharView(beer: beer)){
                        HStack{
                            Text(beer.name!)
                                .font(.title)
                                .foregroundColor(.red)
                                .shadow(radius: 5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                            //Image(beer.image_url)
                            AsyncImage(url: URL(string: beer.image_url!)) { image in
                                image.resizable()
                            }placeholder: {
                                ProgressView()
                            }
                            .scaledToFit()
                            .frame(width:30, height: 100, alignment: .trailing)
                            .padding(.trailing)
                        }
                    }
                        Divider()
                            .frame(height: 3)
                            .overlay(.red)
                }
                }
                .onAppear(){
                    viewModel.fetch()
                }
            }       .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    AngularGradient(gradient: Gradient(colors: [.yellow, .black, .yellow, .black, .yellow]), center: .center)
                )
        }.accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



