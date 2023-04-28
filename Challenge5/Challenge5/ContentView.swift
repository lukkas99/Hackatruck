//
//  ContentView.swift
//  Challenge5
//
//  Created by Student21 on 13/04/23.
//

import SwiftUI
import MapKit
struct ContentView: View {
    @State private var region = MKCoordinateRegion( center: CLLocationCoordinate2D(
        latitude: -19.924433,
        longitude: -43.990387
    ),
        span: MKCoordinateSpan(
        latitudeDelta: 10,
        longitudeDelta: 10)
    )
    @State private var showSheet = false
    @State private var localAtual = Local(name: "Brasil", logo: "Flag_Brazil",latitude: -19.924460, longitude: -43.990400, descricao: "Descricao")
    
    let local = [
        Local(name: "Brasil", logo: "Flag_Brazil",latitude: -19.924460, longitude: -43.990400, descricao: "https://picsum.photos/200"),
        Local(name: "Thailandia", logo: "Flag_Thailand",latitude: 13.736717, longitude: 100.523186, descricao: "https://picsum.photos/200"),
        Local(name: "Japao", logo: "Flag_Japan",latitude: 35.6894, longitude: 139.692, descricao: "https://picsum.photos/200"),
 ]
    
    var body: some View {
            ZStack{
                Map(coordinateRegion: $region, annotationItems: local){ local in
                    MapAnnotation(coordinate: local.cordenada,content: {
                        Image(systemName: "pin.circle.fill").foregroundColor(.red)
                            .onTapGesture {
                                self.showSheet = true
                            }
                        Text(local.name)
                     }
                    )
                }//map view
                .sheet(isPresented: $showSheet){
                    VStack{
                        Text("\(localAtual.name)")
                            .font(.title)
                            .bold()
                        Image(localAtual.logo)
                            .resizable()
                            .frame(width: 70, height: 50)
                        Text(localAtual.descricao)
                            .font(.title)
                    }
                }
                    HStack{
                        ForEach(local, id: \.id) { local in
                        Spacer()
                            Button {localAtual = local
                                region.center.latitude = local.latitude
                                region.center.longitude =
                                local.longitude
                            } label: {
                                Image(local.logo)
                                .resizable()
                                .frame(width: 70, height: 50)
                            }
                        Spacer()
                    }
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom)
            }      .ignoresSafeArea()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
