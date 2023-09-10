//
//  ContentView.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = NavigationBarModel()
 
    
    var body: some View {
        HomeView(viewModel: HomeViewModel())
            .environmentObject(model)
    }
}

#Preview {
    ContentView()
}
