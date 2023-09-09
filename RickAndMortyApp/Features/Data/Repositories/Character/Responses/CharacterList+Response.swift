//
//  CharacterListResponse.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 5/9/23.
//

import Foundation

// MARK: - CharacterListResponse
struct CharacterListResponse: Codable {
    let info: InfoResponse
    var results: [CharacterResponse]
}

// MARK: - Info
struct InfoResponse: Codable {
    let count, pages: Int
    let next, prev: String?
}

// MARK: - Result
struct CharacterResponse: Codable {
    let id: Int
    let name: String
    let status: StatusResponse
    let species, type: String
    let gender: GenderResponse
    let origin, location: LocationResponse
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum GenderResponse: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}

// MARK: - Location
struct LocationResponse: Codable {
    let name: String
    let url: String
}

enum StatusResponse: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
