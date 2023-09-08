//
//  Character+Repository.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 5/9/23.
//

import Foundation

protocol CharacterRepository {
    func getCharacterList(pageNumber: String?) async throws -> CharacterListResponse
}

class DefaultCharacterRepository: CharacterRepository {
    private let apiService: ApiService
    
    init(apiService: ApiService = DefaultApiService()) {
        self.apiService = apiService
    }
    
    func getCharacterList(pageNumber: String?) async throws -> CharacterListResponse {
        let endpoint = RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.pagination)\(pageNumber ?? "1")"
        
        do {
            return try await apiService.getDataFromGetRequest(from: endpoint)
        } catch {
            throw error
        }
    }
}
