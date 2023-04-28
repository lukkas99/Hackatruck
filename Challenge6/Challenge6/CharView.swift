//
//  CharView.swift
//  Challenge6
//
//  Created by Student21 on 14/04/23.
//

import SwiftUI

struct CharView: View {
    let beer : DataBeer
    @State private var toggleSheet = false

//    var charzin: DataBeer
    var body: some View {
        VStack{
            HStack{
                ForEach(0...4, id: \.self){ _ in
                    AsyncImage(url: URL(string: beer.image_url!)) { image in
                        image.resizable()
                    }placeholder: {
                        ProgressView()
                    }
                    .scaledToFit()
                    .frame(width: 70, height: 200)
                }
            }.onTapGesture
            {
                toggleSheet.toggle()
            }
            ScrollView{
                Text(beer.name!)
                    .font(.custom("Georgia", size: 60))
                    .foregroundColor(.red)
                    .padding(.bottom, 1)
                Text(beer.description!)
                    .font(.title)
                    .foregroundColor(.red)
                    .padding([.leading, .trailing])
                HStack{
                    Text("IBU \(beer.ibu!, specifier:"%.2f")")
                        .font(.title)
                        .foregroundColor(.red)
                        .padding([.leading, .trailing])
                    Text("ABV \(beer.abv!, specifier:"%.2f")")
                        .font(.title)
                        .foregroundColor(.red)
                        .padding([.leading, .trailing])
                }
            }
            HStack{
                ForEach(0...4, id: \.self){ _ in
                    AsyncImage(url: URL(string: beer.image_url!)) { image in
                        image.resizable()
                    }placeholder: {
                        ProgressView()
                    }
                    .scaledToFit()
                    .frame(width: 70, height: 200)
                }
            }.onTapGesture
            {
                toggleSheet.toggle()
            }.sheet(isPresented: $toggleSheet){
                ZStack{
                    Color(.black)
                    .ignoresSafeArea()
                    AsyncImage(url: URL(string: beer.image_url!)) { image in
                        image.resizable()
                    }placeholder: {
                        ProgressView()
                    }
                    .scaledToFit()
                    .frame(width: 200, height: 500)
                }
            }

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Gradient(colors: [.black,.black, .yellow, .yellow,.black, .black])
            )
    }
}

struct CharView_Previews: PreviewProvider {
    static var previews: some View {
        CharView(beer: DataBeer(name:"nome", description: "descricao", image_url: "https://images.punkapi.com/v2/192.png", abv: 5.0, ibu: 4.12))
    }
}
