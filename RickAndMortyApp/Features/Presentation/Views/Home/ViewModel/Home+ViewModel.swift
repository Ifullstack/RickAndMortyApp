//
//  Home+ViewModel.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/9/23.
//
import Foundation
import Observation

@Observable class HomeViewModel {
    // MARK: - Properties
    
    /// Use case for managing character-related logic.
    private let useCase: CharacterUseCase
    
    /// Array of characters that will be displayed.
    var characterList: [CharacterBusinessModel] = []
    
    /// Any error that occurs during view-related actions.
    var viewError: AppError?
    
    /// Boolean flag indicating whether an error has occurred.
    var hasError: Bool = false
    
    /// Boolean flag indicating whether a network request is in progress.
    var isLoading: Bool = false
    
    /// The current page for pagination.
    private var currentPage: Int = 1
    
    /// Initializes a new HomeViewModel.
    ///
    /// - Parameter useCase: The use case for character-related logic. Defaults to `DefaultCharacterUseCase()`.
    init(useCase: CharacterUseCase = DefaultCharacterUseCase()) {
        self.useCase = useCase
    }
    
    /// Loads the character list from the network or cache.
    func loadCharacterList() async {
        // Exit if already loading data
        guard !isLoading else { return }
        
        // Set loading flag
        isLoading = true
        
        do {
            // Fetch the character list for the current page.
            let response = try await useCase.getCharacterList(pageNumber: "\(currentPage)")
            
            // Update the UI on the main thread.
            await MainActor.run {
                characterList += response.results // Append new characters to existing array
                hasError = false
                currentPage += 1 // Increment current page for pagination
                isLoading = false
            }
        } catch {
            // Handle error and update the UI on the main thread.
            await MainActor.run {
                isLoading = false
                viewError = .unExpectedError
                hasError = true
            }
        }
    }
}

/// Extension to initialize `SectionRowModel` from `CharacterBusinessModel`.
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
