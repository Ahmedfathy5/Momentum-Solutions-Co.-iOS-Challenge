//
//  GitHub.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI
import SDWebImage


struct GitHub: View {
    
    @StateObject var viewModel = repoViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.repos) { repo in
                        NavigationLink {
                            GitHubDetailView(userBio: repo.bio ?? "", userImage: repo.owner?.userImage)
                        } label: {
                            UserCell(userName: repo.name ?? "", userImage: (repo.owner?.userImage)!)
                        }

                       
                    }
                }
            }
            .navigationTitle("GitHub🛠️")
            
            
            
        }
        
    }
}

#Preview {
    GitHub( )
}
