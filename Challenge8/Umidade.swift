//
//  Umidade.swift
//  Challenge8
//
//  Created by Lucas on 26/04/23.
//

import Foundation
struct Umidade: Decodable{
    var umidade: String?
}

class ViewModel: ObservableObject{
    @Published var chars: [Umidade] = []
    func fetch (){
        guard let url = URL(string:"https://api.punkapi.com/v2/beers") else{

            return
        }
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Umidade].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()

    }
}
