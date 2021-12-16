//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Waqar naeem on 17/11/2021.
//

import Foundation

class NetworkManager: ObservableObject{
    @Published var post = [Post]()
    func fetchData(){
        if let Url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: Url) { [self] data, response, error in
                if error == nil{
                    let decoder =  JSONDecoder()
                    if let safedata = data{
                        do{
                            let result = try decoder.decode(Results.self, from: safedata)
                            DispatchQueue.main.async {
                                post = result.hits
                            }
                            
                            
                        }catch{
                            print(error)
                        }
                    }
                }
            }
                
            task.resume()
        }
        
    }
}
