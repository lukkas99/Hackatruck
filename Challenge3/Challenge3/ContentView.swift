//
//  ContentView.swift
//  Challenge3
//
//  Created by Lucas on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewUm()
                .tabItem {
                    Label("Lista", systemImage: "list.dash")
                }
            
            ViewDois()
                .tabItem {
                    Label("Azul", systemImage: "square.and.pencil")
                }
            ViewTres()
                .tabItem {
                    Label("Verde", systemImage: "scribble.variable")
                }
            ViewQuatro()
                .tabItem {
                    Label("Amarelo", systemImage: "paperplane.circle.fill")
                }
                .badge(2)
            ViewCinco()
                .tabItem {
                    Label("Roxo", systemImage: "terminal")
                }
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
