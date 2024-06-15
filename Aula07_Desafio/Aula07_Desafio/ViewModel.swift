import Foundation

class ViewModel : ObservableObject{
    @Published var results:[RawData] = []
    @Published var cache:CacheData?
    @Published var summaryStats: SummaryStats?
    
//    Method
    func fetchResults(){
        guard let url = URL(string: "https://coronavirus.m.pipedream.net/") else{ return } 
        
        let task = URLSession.shared.dataTask(with: url) {
            [weak self] data, _, error in
            guard let data = data, error==nil else {return}
            
            do{
                let jsonDecoded = try JSONDecoder().decode(API.self, from:data)
                DispatchQueue.main.async {
                    self?.results = jsonDecoded.rawData
                    self?.cache = jsonDecoded.cache
                    self?.summaryStats = jsonDecoded.summaryStats
                }
            }catch{ print(error) }
        }
        task.resume()
    }
}
