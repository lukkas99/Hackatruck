//
//  ContentView.swift
//  Challenge2
//
//  Created by Lucas on 10/04/23.
//
import SwiftUI

struct ContentView: View {
    @State var valor1: Double = 0.0
    @State var valor2: Double = 0.0
    @State var valor3: Double = 0.0
    @State var cor: String = "Normal"

    
    private let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.zeroSymbol = ""
        return numberFormatter
    }()
    
    var body: some View {
        ZStack {
            VStack{
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Digite o peso aqui...", value: $valor1, formatter: numberFormatter)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                    .multilineTextAlignment(.center)
                TextField("Digite a altura...", value: $valor2, formatter: numberFormatter)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                    .multilineTextAlignment(.center)
                Button("Calcular") {
                    valor3 = valor1/(valor2*valor2)
                    //valor3 = valor1/ pow(valor2)
                    if(valor3 < 18.5){
                        cor = "Baixo peso"
                    }
                    if(valor3 >= 18.5 && valor3 <= 24.99){
                        cor = "Normal"
                    }
                    if(valor3 >= 25 && valor3 <= 29.99){
                        cor = "Sobrepeso"
                    }
                    else{
                        cor = "Obesidade"
                    }
                }
                .padding(.all)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(20)
                .shadow(radius: 10)
                Spacer()
                Text(cor)
                    .font(.largeTitle)
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
            }
        }
        .background(Color(cor))
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
