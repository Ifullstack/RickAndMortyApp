//
//  Character+UseCase.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/9/23.
//

import Foundation

protocol CharacterUseCase {
    func getCharacterList(pageNumber: String?) async throws -> CharacterListBusinessModel
}

class DefaultCharacterUseCase: CharacterUseCase {
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository = DefaultCharacterRepository()) {
        self.repository = repository
    }
    
    func getCharacterList(pageNumber: String?) async throws -> CharacterListBusinessModel {
        do {
            let response = try await repository.getCharacterList(pageNumber: pageNumber)
            return CharacterListBusinessModel(response: response)
        } catch {
            throw error
        }
    }
}
