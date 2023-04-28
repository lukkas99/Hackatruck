//
//  ViewQuatro.swift
//  Challenge3
//
//  Created by Lucas on 11/04/23.
//

import SwiftUI

struct ViewQuatro: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            Text("Hello, quatro!")
                .font(.largeTitle)
        }
    }
}

struct ViewQuatro_Previews: PreviewProvider {
    static var previews: some View {
        ViewQuatro()
    }
}
