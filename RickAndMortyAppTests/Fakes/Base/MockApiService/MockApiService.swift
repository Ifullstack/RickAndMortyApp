//
//  CharacterListFakeApiService.swift
//  RickAndMortyAppTests
//
//  Created by Cane Allesta on 5/9/23.
//

import Foundation
@testable import RickAndMortyApp

class CharacterListFakeApiServiceSuccess: ApiService {
    func getDataFromGetRequest<Response : Codable>(from url: String) async throws -> Response  {
        do {
            let json = CharacterListFake.makeCharacterListJsonFake()
            let decodedData = try JSONDecoder().decode(Response.self, from: json)
            return decodedData
        } catch {
            // If decoding fails, throw a parse error
            if (error as? DecodingError) != nil {
                throw AppError.parseError
            }
            // Else throw the original service error
            throw AppError.serviceError(error: error)
        }
    }
}

class CharacterListFakeApiServiceFailure: ApiService {
    func getDataFromGetRequest<Response : Codable>(from url: String) async throws -> Response  {
        throw AppError.missingData
    }
}

class CharacterListFakeApiServiceParseErrorFailure: ApiService {
    func getDataFromGetRequest<Response : Codable>(from url: String) async throws -> Response  {
        do {
            let json = CharacterListFake.makeCharacterListJsonFakeParseError()
            let decodedData = try JSONDecoder().decode(Response.self, from: json)
            return decodedData
        } catch {
            // If decoding fails, throw a parse error
            if (error as? DecodingError) != nil {
                throw AppError.parseError
            }
            // Else throw the original service error
            throw AppError.serviceError(error: error)
        }
    }
}
