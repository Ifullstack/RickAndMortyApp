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
