//
//  Home+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/9/23.
//

import SwiftUI
import Observation

struct HomeView: View {
    @Bindable var viewModel: HomeViewModel
    
    @State var showStatusBar = true
    @State var contentHasScrolled = false
    @State var showNav = false
    @State var showDetail: Bool = false
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            
            ScrollView() {
                scrollDetectionView
                characterListView
                    .padding(.vertical, 70)
                    .padding(.bottom, 50)
            }.coordinateSpace(.named("scroll"))
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
         }
    }
    
    var scrollDetectionView: some View {
        GeometryReader { proxy in
            let offset = proxy.frame(in: .named("scroll")).minY
            Color.clear.preference(key: ScrollPreferenceKey.self, value: offset)
        }
        .onPreferenceChange(ScrollPreferenceKey.self) { value in
            withAnimation(.easeInOut) {
                let estimatedContentHeight = CGFloat(viewModel.characterList.count * 100)
                let threshold = 0.8 * estimatedContentHeight
        
                if value <= -threshold {
                    Task {
                        await viewModel.loadCharacterList()
                    }
                }
                
                if value < 0 {
                    contentHasScrolled = true
                } else {
                    contentHasScrolled = false
                }
            }
        }
    }

    var characterListView: some View {
        VStack(spacing: 16) {
            ForEach(Array(viewModel.characterList.enumerated()), id: \.offset) { index, businessModel in
                SectionRowView(section: SectionRowModel(businessModel: businessModel))
                  
                if index == viewModel.characterList.count - 1 {
                    Divider()
                    if viewModel.isLoading {
                        ProgressView("Loading more characters...")
                            .accentColor(.white)
                    }
                } else {
                    Divider()
                }
            }
        }
        .padding(20)
        .background(.ultraThinMaterial)
        .backgroundStyle(cornerRadius: 30)
        .padding(.horizontal, 20)
    }
}






