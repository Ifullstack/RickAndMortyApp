//
//  Home+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/9/23.
//

import SwiftUI
import Observation

struct HomeView: View {
    @EnvironmentObject var router: Router
    @Bindable var viewModel: HomeViewModel
    
    @State var showStatusBar = true
    @State var contentHasScrolled = false
    @State var showNav = false
    @State var showDetail: Bool = false
    @State var selectedCharacter: CharacterBusinessModel?
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            scrollView
        }
        .onChange(of: showDetail, {
            withAnimation {
                showNav.toggle()
                showStatusBar.toggle()
            }
         })
         .overlay(NavigationBarView(title: "Characters",
                                    contentHasScrolled: $contentHasScrolled))
         .statusBar(hidden: !showStatusBar)
         .onAppear {
             Task {
                 await viewModel.loadCharacterList()
             }
         }
         .alert(isPresented: $viewModel.hasError) {
             Alert(title: Text("Important message"),
                   message: Text(viewModel.viewError?.localizedDescription ?? "Unexpected error is happen"),
                   dismissButton: .default(Text("Got it!")))
         }.sheet(isPresented: $showDetail) {
             CharacterDetailView(character: selectedCharacter)
         }
    }
}
