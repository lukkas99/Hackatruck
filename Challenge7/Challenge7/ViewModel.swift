//
//  ViewModel.swift
//  Challenge7
//
//  Created by Lucas on 19/04/23.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var park: [Estacionamento] = []
    func fetch (){
        guard let url = URL(string:"http://127.0.0.1:1880/listaEstacionamento") else{

            return
        }
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                
                DispatchQueue.main.async {
                    self?.park = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()

    }
}
