//
//  repoModel.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import Foundation




struct repoModel: Codable,Hashable,Identifiable {
    var id = UUID().uuidString


    let name: String?
    let owner: Owner?
    let bio: String?
    
    enum CodingKeys: String,CodingKey {
        case name
        case bio = "description"
        case owner
        
    }
}

struct Owner: Codable,Hashable,Identifiable {
    var id = UUID().uuidString

    
    let userImage: URL
    
    enum CodingKeys: String,CodingKey {
       case userImage = "avatar_url"
    }
}
