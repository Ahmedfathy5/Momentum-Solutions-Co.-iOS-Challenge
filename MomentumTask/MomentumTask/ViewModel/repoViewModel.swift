//
//  repoViewModel.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import SwiftUI

class repoViewModel: ObservableObject {

   @Published var repos: [repoModel] = []
    @Published var reposImage: [Owner] = []
    @Published var image: UIImage? = nil

    init() {
       getData()
    }
    
    
    func getData() {
        APIService.shared.getRepos {[weak self] repos, error in
            guard let repos = repos else { return }
            DispatchQueue.main.async {
                self?.repos = repos
            }
        }
    }
    
  

    
    
    
}

