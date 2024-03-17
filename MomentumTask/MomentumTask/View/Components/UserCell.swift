//
//  UserCell.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct UserCell: View {
//    private var index: Int
    var userName: String
    var userImage: URL
//    init(viewModel: repoViewModel) {
//        self._viewModel = StateObject(wrappedValue: viewModel)
//       // self.index = index
//    }
    
    var body: some View {
        HStack(spacing: 15) {
           WebImage(url: userImage)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            Spacer()
            Text(userName)
                .font(.footnote.bold())
                .foregroundStyle(.black)
        }
        .padding(.horizontal)
       Divider()
        
            }
}

#Preview {
    UserCell(userName: "ahmed", userImage: .applicationDirectory )
}
