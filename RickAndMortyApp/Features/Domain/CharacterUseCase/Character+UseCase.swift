//
//  Character+UseCase.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/9/23.
//

import Foundation

protocol CharacterUseCase {
    /// Fetches the character list for a given page number.
    ///
    /// - Parameters:
    ///   - pageNumber: Optional page number for pagination.
    /// - Throws: An error if the request fails.
    /// - Returns: A business model representing the character list.
    func getCharacterList(pageNumber: String?) async throws -> CharacterListBusinessModel
    
    /// Searches for characters by name.
    ///
    /// - Parameters:
    ///   - name: The name to search for.
    ///   - pageNumber: Optional page number for pagination.
    /// - Throws: An error if the request fails.
    /// - Returns: A business model representing the character list.
    func searchCharacter(by name: String, and pageNumber: String?) async throws -> CharacterListBusinessModel
}

class DefaultCharacterUseCase: CharacterUseCase {
    /// Repository for fetching character data.
    private let repository: CharacterRepository
    
    /// Initializes a new DefaultCharacterUseCase.
    ///
    /// - Parameter repository: The repository for character-related logic. Defaults to `DefaultCharacterRepository()`.
    init(repository: CharacterRepository = DefaultCharacterRepository()) {
        self.repository = repository
    }
    
    /// Fetches the character list for a given page number.
    ///
    /// - Parameter pageNumber: Optional page number for pagination.
    /// - Throws: An error if the request fails.
    /// - Returns: A business model representing the character list.
    func getCharacterList(pageNumber: String?) async throws -> CharacterListBusinessModel {
        do {
            let response = try await repository.getCharacterList(pageNumber: pageNumber)
            return CharacterListBusinessModel(response: response)
        } catch {
            throw error
        }
    }
    
    /// Searches for characters by name.
    ///
    /// - Parameters:
    ///   - name: The name to search for.
    ///   - pageNumber: Optional page number for pagination.
    /// - Throws: An error if the request fails.
    /// - Returns: A business model representing the character list.
    func searchCharacter(by name: String,
                         and pageNumber: String?) async throws -> CharacterListBusinessModel {
        do {
            let response = try await repository.searchCharacter(by: name, and: pageNumber)
            return CharacterListBusinessModel(response: response)
        } catch {
            throw error
        }
    }
}

