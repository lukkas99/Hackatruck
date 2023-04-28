//
//  ContentView3.swift
//  Challenge1
//
//  Created by Lucas on 05/04/23.
//

import SwiftUI

struct ContentView3: View {
    @State var username: String = "Ciclano"
    @State var clickButton: Bool = false
    var body: some View {
        VStack {
            VStack{
                Text("Your username: \(username)")
                    .font(.largeTitle)
                TextField("Enter username...", text: $username)
                    .padding()
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            
            ZStack{
                Image("bg")
                    .resizable()
                    .scaledToFit()
                    .saturation(0.5)
                    .blur(radius: 1)
                    .opacity(0.2)
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 10)
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 10)
                }
                Spacer()
            }
            
            Spacer()
            Button("Entrar") {
                clickButton = true
                username = "fulando"
            }
            .alert( isPresented: $clickButton){
                Alert(
                title: Text("Alerta"),
                message: Text("abgsdugsaugdua"),
                dismissButton: .default(Text("Booooora"))

                )
            }
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}


