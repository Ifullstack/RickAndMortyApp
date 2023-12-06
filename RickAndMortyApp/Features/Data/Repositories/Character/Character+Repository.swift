//
//  Character+Repository.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 5/9/23.
//

import Foundation

/// Protocol defining methods for fetching character-related data.
protocol CharacterRepository {
    /// Fetches a list of characters based on the given page number.
    func getCharacterList(pageNumber: String?) async throws -> CharacterListResponse
    /// Searches for characters based on the name and optional page number.
    func searchCharacter(by name: String, and pageNumber: String?) async throws -> CharacterListResponse
}

/// Default implementation of the CharacterRepository.
class DefaultCharacterRepository: CharacterRepository {
    // ApiService instance used to make API requests.
    private let apiService: ApiService
    private let cache: NSCacheStore = NSCacheStore<String,CharacterListResponse>.shared
    
    /// Initializes a new repository with an ApiService.
    init(apiService: ApiService = DefaultApiService()) {
        self.apiService = apiService
    }
    
    /// Fetches the character list for a given page number.
    /// First tries to get data from cache, otherwise makes an API call.
    func getCharacterList(pageNumber: String?) async throws -> CharacterListResponse {
        // Attempt to retrieve from cache.
        if let cachedResponse = retreive(by: pageNumber ?? "1") {
            return cachedResponse
        }
    
        do {
            // Construct endpoint URL
            let endpoint = RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.pagination)\(pageNumber ?? "1")"
            // Fetch data from API
            let response: CharacterListResponse = try await apiService.getDataFromGetRequest(from: endpoint)
            // Cache the response
            self.save(with: pageNumber ?? "1", response: response)
            return response
        } catch {
            throw error
        }
    }
    
    /// Searches for characters by name and optionally by page number.
    func searchCharacter(by name: String,
                         and pageNumber: String?) async throws -> CharacterListResponse {
        do {
            return try await apiService.getDataFromGetRequest(from: getEndpointForPagination(by: name, and: pageNumber))
        } catch {
            throw error
        }
    }
}

// MARK: - Cache Handling
extension DefaultCharacterRepository {
    /// Retrieves cached data for a given page number.
    private func retreive(by pageNumber: String) -> CharacterListResponse? {
        cache[pageNumber]
    }
    
    /// Saves the data to cache for a given page number.
    private func save(with pageNumber: String, response: CharacterListResponse) {
        cache[pageNumber] = response
    }
}

// MARK: - Endpoint Construction
extension DefaultCharacterRepository {
    /// Constructs the API endpoint for searching with pagination.
    private func getEndpointForPagination(by name: String, and pageNumber: String?) -> String {
        if let pageNumber = pageNumber {
            return RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.name)\(name)" + "\(RemoteURL.searchPagination)\(pageNumber)"
        } else {
            return RemoteURL.baseUrl + RemoteURL.characterUrl + "\(RemoteURL.name)\(name)"
        }
    }
}
