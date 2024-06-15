//
//  Model.swift
//  Aula07
//
//  Created by Turma02-10 on 14/06/24.
//

import Foundation
struct Coin : Decodable, Identifiable{
    var id:String?
    var rank:String?
    var symbol:String?
}

struct API : Decodable{
    var data:[Coin]
}
