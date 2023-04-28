//
//  ContentView.swift
//  Challenge1
//
//  Created by Lucas on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("bg")
                .resizable()
                .scaledToFit()
            Text("HackTruck")
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .font(.title)
            HStack{
                Text("Maker")
                    .foregroundColor(Color.yellow)
                    .font(.subheadline)
                Text("Space")
                    .foregroundColor(Color.red)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
