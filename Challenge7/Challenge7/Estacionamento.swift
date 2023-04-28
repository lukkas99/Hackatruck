//
//  Estacionamento.swift
//  Challenge7
//
//  Created by Lucas on 19/04/23.
//

import Foundation

struct Estacionamento: Decodable{
    var nome: String?
    var endereco: String?
    var vagas: Int?
    var carros: [Carro]?
    
}
struct Carro{
    var modelo: String?
    var ano: Int?
    var cor: String?
    var preco: Double?
}
