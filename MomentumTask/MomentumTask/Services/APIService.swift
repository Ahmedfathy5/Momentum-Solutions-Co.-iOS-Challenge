//
//  APIService.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import SwiftUI

class APIService {
    static let shared = APIService()
  
    
    func getRepos (completionHandler: @escaping (_ repos: [repoModel]?, _ error: Error?) -> Void ) {
        guard let url = URL(string: "https://api.github.com/repositories") else { return }
        
    let task =   URLSession.shared.dataTask(with: url) { data, _, error in
            guard error == nil , let data = data else {
                return completionHandler(nil, error)
            }
            do {
                let result = try JSONDecoder().decode([repoModel].self, from: data)
                
                completionHandler(result, nil)
                
            } catch {
                completionHandler(nil, error)
                print(error.localizedDescription)
            }
        }
        task.resume()
        
        
    }
    
 
    
}
