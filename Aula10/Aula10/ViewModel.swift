//
//  ViewModel.swift
//  Aula10
//
//  Created by Turma02-10 on 24/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var leituras:[Umidade] = []
    
//    Method
    func fetchLeitura(){
        guard let url = URL(string: "http://192.168.128.251:1880/get") else{ return } // url is created only if the URL object can be created
        
        let task = URLSession.shared.dataTask(with: url) {
            [weak self] data, _, error in
            guard let data = data, error==nil else {return}
            
            do{
                let jsonDecoded = try JSONDecoder().decode([Umidade].self, from:data)
                DispatchQueue.main.async {self?.leituras = jsonDecoded}
            }catch{ print(error) }
        }
        task.resume()
    }
}
