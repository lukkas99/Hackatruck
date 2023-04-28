//
//  SegundaParte.swift
//  Challenge3
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI

struct SegundaParte: View {
    @State private var toggleSheet = false
    var aluno = Aluno(
        name:"Lucas",
        surname:"Morato",
        website:"Lucas.com",
        nickname:"Lukao"
    )
    var body: some View {
        //        NavigationView {
        //            NavigationLink {
        //                Text("Destination")
        //            } label: {
        //                Text("Tap me")
        //            }
        //        }
        NavigationStack {
            NavigationLink("Button1") {
                Text(aluno.name)
            }
            NavigationLink("Button2"){
                NavigationLink(aluno.surname){
                    Text(aluno.nickname)
                }
            }
            Button("Button3"){
                toggleSheet.toggle()
            }
            .sheet(isPresented: $toggleSheet){
                ViewUm()
            }
        }
        .font(.largeTitle)
    }
}

struct SegundaParte_Previews: PreviewProvider {
    static var previews: some View {
        SegundaParte()
    }
}
