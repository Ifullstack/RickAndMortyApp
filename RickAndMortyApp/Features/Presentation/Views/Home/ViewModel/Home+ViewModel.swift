//
//  Home+ViewModel.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/9/23.
//
import Foundation
import Observation

@Observable class HomeViewModel {
    private let useCase: CharacterUseCase
    
    var characterList: [CharacterBusinessModel] = []
    var viewError: AppError?
    var hasError: Bool = false
    var isLoading: Bool = false
    
    private var currentPage: Int = 1
    
    init(useCase: CharacterUseCase = DefaultCharacterUseCase()) {
        self.useCase = useCase
    }
    
    func loadCharacterList() async {
        guard !isLoading else { return }
        isLoading = true
                
        do {
            let response = try await useCase.getCharacterList(pageNumber: "\(currentPage)")
            await MainActor.run {
                characterList += response.results // Append new characters to the existing array
                hasError = false
                currentPage += 1 // Increment the page number
                isLoading = false
            }
        } catch {
            await MainActor.run {
                isLoading = false
                viewError = .unExpectedError
                hasError = true
            }
        }
    }
}

extension SectionRowModel {
    init(businessModel: CharacterBusinessModel) {
        self.id = businessModel.id
        self.title = businessModel.name
        self.subtitle = businessModel.species
        self.text = "\(String(describing: businessModel.gender?.rawValue ?? "")) - \(businessModel.origin.name) - \(String(describing: businessModel.status?.rawValue ?? ""))"
        self.image = businessModel.image
        self.progress = businessModel.status == .alive ? 1.0 : 0.1
    }
}
