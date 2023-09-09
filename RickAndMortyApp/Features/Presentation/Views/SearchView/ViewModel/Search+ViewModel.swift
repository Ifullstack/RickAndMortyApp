//
//  Search+ViewModel.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 9/9/23.
//

import Foundation
import Observation
import Combine

@Observable class SearchViewModel {
    private var useCase: CharacterUseCase
    private var currentPage: Int = 1
    private var canFetchMoreCharacters: Bool = true
    
    var isLoading: Bool = false
    var characterList: [CharacterBusinessModel] = []
    var workItem: DispatchWorkItem? 
    
    init(useCase: CharacterUseCase = DefaultCharacterUseCase()) {
        self.useCase = useCase
    }
    
    func searchCharacter(by name: String) async {
        if name.isEmpty {
            resetSearch()
            return
        }
        guard !isLoading, canFetchMoreCharacters else { return }
        isLoading = true
        currentPage = 1
        characterList = []
        await fetchSearchCharacter(by: name)
    }
    
    func searchMoreCharacters(by name: String) async {
        if name.isEmpty {
            resetSearch()
            return
        }
        guard !isLoading, canFetchMoreCharacters else { return }
        isLoading = true
        await fetchSearchCharacter(by: name)
    }
    
    private func fetchSearchCharacter(by name: String) async {
        do {
            let response = try await useCase.searchCharacter(by: name, and: "\(currentPage)")
            await MainActor.run {
                characterList += response.results // Append new characters to the existing array
                currentPage += 1 // Increment the page number
                isLoading = false
                canFetchMoreCharacters = true
            }
        } catch {
            await handleError()
        }
    }
    
    private func resetSearch() {
        canFetchMoreCharacters = true
        characterList = []
        currentPage = 1
    }
    
    private func handleError() async {
        if characterList.isEmpty {
            await MainActor.run {
                isLoading = false
            }
        } else {
            await MainActor.run {
                isLoading = false
                canFetchMoreCharacters = false
            }
        }
    }
}
