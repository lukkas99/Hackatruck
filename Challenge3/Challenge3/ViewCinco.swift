//
//  ViewCinco.swift
//  Challenge3
//
//  Created by Lucas on 11/04/23.
//

import SwiftUI

struct ViewCinco: View {
    var body: some View {
        VStack{
            Text("Hello, cinco!")
                .font(.largeTitle)
            Spacer()
            Image("truck")
                .resizable()
                .scaledToFit()
            Spacer()
            Text("")
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.purple)
    }
}

struct ViewCinco_Previews: PreviewProvider {
    static var previews: some View {
        ViewCinco()
    }
}
