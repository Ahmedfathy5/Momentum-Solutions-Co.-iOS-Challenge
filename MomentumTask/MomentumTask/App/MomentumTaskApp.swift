//
//  MomentumTaskApp.swift
//  MomentumTask
//
//  Created by Ahmed Fathi on 17/03/2024.
//

import SwiftUI

@main
struct MomentumTaskApp: App {
  
    init() {
        UINavigationBar.appearance().barTintColor =  UIColor.black
    }
      
    
    var body: some Scene {
        WindowGroup {
            GitHub()
        }
    }
}
