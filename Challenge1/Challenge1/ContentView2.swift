//
//  ContentView2.swift
//  Challenge1
//
//  Created by Lucas on 05/04/23.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        VStack {
            Image("truck")
                .resizable()
                .padding(.bottom)
                .scaledToFit()
            ZStack{
                Image("bg")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Text("hack a truck")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top,-80)
                            .foregroundColor(.blue),alignment: .center
                        
                    )
//                VStack{
//                    Text("HackTruck")
//                        .fontWeight(.heavy)
//                        .foregroundColor(Color.blue)
//                        .font(.title)
//                    Spacer()
//                    Text("")
//                }
                .frame(height: 200.0)
                }
                ZStack{
                    Rectangle()
                        .frame(height: nil)
                        //.frame(width: 300.0)
                        .ignoresSafeArea()
                        .padding(.horizontal)
                    HStack{
                        Text("Maker")
                            .foregroundColor(Color.yellow)
                            .font(.title)
                        Text("Space")
                            .foregroundColor(Color.red)
                            .font(.title)
                    }
                    .frame(height: nil)
                }
                .padding(.top)
        }
        
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

