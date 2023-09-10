//
//  RickAndMortyAppApp.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 5/9/23.
//

import SwiftUI

@main
struct RickAndMortyAppApp: App {
    @StateObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navStack) {
                ContentView()
            }.environmentObject(router)
        }
    }
}
