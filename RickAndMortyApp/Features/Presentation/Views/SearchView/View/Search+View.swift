//
//  Search+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 9/9/23.
//

import SwiftUI
import Observation
import Combine

struct SearchView: View {
    @Bindable var viewModel: SearchViewModel
        
    @State var text = ""
    @State var showCourse = false
    @State var selectedCharacter: CharacterBusinessModel?
    
    @Namespace var namespace
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.characterList.isEmpty {
                    emptyView
                } else {
                    searchView
                }
                Spacer()
            }
        }
        .searchable(text: $text)
        .onChange(of: text, { _, newValue in
            searchCharacter(by: newValue)
        })
    }
    
    var searchView: some View {
        ScrollView {
            scrollDetectionView
            ForEach(Array(viewModel.characterList.enumerated()), id: \.offset) { index, character in
                if index != 0 {
                    Divider()
                }
                
                Button {
                    showCourse = true
                    selectedCharacter = character
                } label:  {
                    ListRow(title: character.name, image: character.image)
                    if viewModel.isLoading {
                        ProgressView()
                            .accentColor(.white)
                    }
                }
                .buttonStyle(.plain)
            }
        }
        .searchViewStyle()
        .coordinateSpace(.named("scrollview"))
        .sheet(isPresented: $showCourse) {
          //  CourseView(namespace: namespace, course: $selectedCourse, isAnimated: false)
        }
    }
    
    var scrollDetectionView: some View {
        GeometryReader { proxy in
            let offset = proxy.frame(in: .named("scrollview")).minY
            Color.clear.preference(key: ScrollPreferenceKey.self, value: offset)
        }
        .onPreferenceChange(ScrollPreferenceKey.self) { value in
            withAnimation(.easeInOut) {
                let estimatedContentHeight = CGFloat(viewModel.characterList.count * 50)
                let threshold = 0.4 * estimatedContentHeight
                if value <= -threshold {
                    Task {
                        await viewModel.searchMoreCharacters(by: text)
                    }
                }
            }
        }
    }
    
    var emptyView: some View {
        Text("No results found")
            .searchViewStyle()
    }
}

extension SearchView {
    private func searchCharacter(by text: String) {
        viewModel.workItem?.cancel()  
        let task = DispatchWorkItem { [weak viewModel] in
            guard let viewModel else { return }
            Task {
                await viewModel.searchCharacter(by: text)
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: task)
        viewModel.workItem = task
    }
}
