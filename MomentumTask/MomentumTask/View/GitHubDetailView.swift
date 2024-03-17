//
//  GitHubDetailView.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI
import SDWebImage

struct GitHubDetailView: View {
    private let width = UIScreen.main.bounds.width - 20
    private let height = UIScreen.main.bounds.height / 3
    var userBio: String = ""
    var userImage: URL?
    var body: some View {
        NavigationStack {
            
                VStack (spacing: 30) {
                  WebImage(url: userImage)
                        .resizable()
                        .frame(width: width, height: height)
                        .cornerRadius(10)
                    Text(userBio)
                        .font(.headline)
                    Spacer()
                    
                }
                .padding()
            
        }
    }
}

#Preview {
    GitHubDetailView()
}
