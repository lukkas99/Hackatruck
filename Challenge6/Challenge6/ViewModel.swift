//
//  Beer.swift
//  Challenge6
//
//  Created by Lucas on 14/04/23.
//

import Foundation

struct DataBeer: Decodable {
    var name: String?
    var description: String?
    var image_url: String?
    var abv: Double?
    var ibu: Double?
}

class ViewModel: ObservableObject{
    @Published var chars: [DataBeer] = []
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
                let parsed = try JSONDecoder().decode([DataBeer].self, from: data)
                
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
