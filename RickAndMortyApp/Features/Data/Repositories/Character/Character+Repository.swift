//
//  Character+Repository.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 5/9/23.
//

import Foundation

protocol CharacterRepository {
    func getCharacterList(pageNumber: String?) async throws -> CharacterListResponse
    func searchCharacter(by name: String, and pageNumber: String?) async throws -> CharacterListResponse
}

class DefaultCharacterRepository: CharacterRepository {
    private let apiService: ApiService
    
    init(apiService: ApiService = DefaultApiService()) {
        self.apiService = apiService
    }
    
    func getCharacterList(pageNumber: String?) async throws -> CharacterListResponse {
        if let cachedResponse = retreive(by: pageNumber ?? "1") {
            return cachedResponse
        }
    
        do {
            let endpoint = RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.pagination)\(pageNumber ?? "1")"
            let response: CharacterListResponse = try await apiService.getDataFromGetRequest(from: endpoint)
            self.save(with: pageNumber ?? "1", response: response)
            return response
        } catch {
            throw error
        }
    }
    
    func searchCharacter(by name: String, 
                         and pageNumber: String?) async throws -> CharacterListResponse {
        do {
            return try await apiService.getDataFromGetRequest(from: getEndpointForPagination(by: name, and: pageNumber))
        } catch {
            throw error
        }
    }
}

extension DefaultCharacterRepository {
    private func retreive(by pageNumber: String) -> CharacterListResponse? {
        let cache = DefaultNSCacheStoreDatasource<String, CharacterListResponse>()
        return cache[pageNumber]
    }
    
    private func save(with pageNumber: String, response: CharacterListResponse) {
        let cache = DefaultNSCacheStoreDatasource<String, CharacterListResponse>()
        cache[pageNumber] = response
    }
}

extension DefaultCharacterRepository {
    private func getEndpointForPagination(by name: String, and pageNumber: String?) -> String {
        if let pageNumber {
            return RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.name)\(name)" + "\(RemoteURL.searchPagination)\(pageNumber)"
        } else {
            return RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.name)\(name)"
        }
    }
}
