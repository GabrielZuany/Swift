//
//  ViewModel.swift
//  Aula07
//
//  Created by Turma02-10 on 14/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var coins:[Coin] = []
    
//    Method
    func fetchCoins(){
        guard let url = URL(string: "https://api.coincap.io/v2/assets") else{ return } // url is created only if the URL object can be created
        
        let task = URLSession.shared.dataTask(with: url) {
            [weak self] data, _, error in
            guard let data = data, error==nil else {return}
            
            do{
                let jsonDecoded = try JSONDecoder().decode(API.self, from:data)
                DispatchQueue.main.async {self?.coins = jsonDecoded.data}
            }catch{ print(error) }
        }
        task.resume()
    }
}
