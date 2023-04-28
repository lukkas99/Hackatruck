//
//  ViewUm.swift
//  Challenge3
//
//  Created by LUCAS on 11/04/23.
//

import SwiftUI

struct ViewUm: View {
    var body: some View {
        NavigationView{
            List {
                ForEach((1...50), id: \.self) {
                    Text("item: \($0)")
                        .font(.title)
                        .foregroundColor(.pink)
                    
                }
            }
            .navigationTitle("LIIIIIIIIIISTAAAAAAAAAA")
            .scrollContentBackground(.hidden)
            .background(.blue)
        }
    }
}

struct ViewUm_Previews: PreviewProvider {
    static var previews: some View {
        ViewUm()
    }
}
